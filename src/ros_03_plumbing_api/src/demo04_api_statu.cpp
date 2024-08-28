#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

/*
发布方实现
1.包含头文件
   ROS中文本类型 --->std_msgs/String.h
2.初始化ROS节点
3.创建节点句柄
4.创建发布者对象
5.编写发布逻辑并发布数据
*/
int main(int argc, char *argv[]){
    //设置编码
    setlocale(LC_ALL,"");
    //2.初始化ROS节点
    /*
    参数：
        1.argc ---封装实参的个数
        2.argv ---封装参数的数组
        3.name ---为节点命名（唯一性）
        4.options ---节点启动选项
    使用：
        1.argc和argv的使用，
          如果按照ros中特定的格式穿入实参，ros可以加以使用，用来设置全局参数，比如给节点重命名。
        2.options的使用，
          节点需要保证唯一，会导致一个问题：同一个节点不能重复启动。
          ros中当有重名节点启动，之前节点会关闭。
        需求：特定场景下，需要一个节点多次启动怎么办？
        解决：设置启动项 ros::init_options::AnonymousName
          当创建ros节点时，会在用户自定义的节点后面加上一串数字，防止重名
    */
    
    ros::init(argc,argv,"ergouzi",ros::init_options::AnonymousName);
    //3.创建节点句柄
    ros::NodeHandle nh;
    //4.创建发布者对象
    
    /*
    作用：创建发布者对象
    模板：被发布的消息类型
    参数：
        1.消息名称
        2.消息队列的长度
        3.latch（可选）如果设置为true，会保存发布方的最后一条消息，当有新的订阅者到来，
          会将保存的消息发送给新的订阅者
    使用：
        1.latch（可选）设置为true的作用？
          以静态地图发布为例：
          方案一：发布方使用固定平率发送数据，效率低
          方案二：latch设置为true，发送方只发送一次数据，每当有新的订阅者到来，发布方只发送一次数据给订阅者。效率高。
    */
    ros::Publisher pub=nh.advertise<std_msgs::String>("fang",10,true);
    //5.编写发布逻辑并发布数据
    //要求以10hz的频率发布数据，并且文本后添加编号
    //先创建被发布的消息
    std_msgs::String msg;
    //发布频率
    ros::Rate rate(10);
    //设置编号
    int count =0;
    //编写循环，循环发布数据、
    ros::Duration(4).sleep();//延缓数据发送4s
 
    while(ros::ok()){
     count ++;
     //msg.data = "hello";
     //实现字符串拼接数字
     std::stringstream ss;
     ss  <<"hello --- >"   <<count;
     msg.data = ss.str();
     pub.publish(msg);
     //添加日志、
     ROS_INFO("发布的数据是：%s",ss.str().c_str());
     rate.sleep();
     if(count == 10) ros::shutdown();
     ros::spinOnce();//官方建议添加
       ROS_INFO("spinOnce()后的数据是");
    }
    /* code */
    return 0;
}

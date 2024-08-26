/*  
    订阅 turtle1 和 turtle2 的 TF 广播信息，查找并转换时间最近的 TF 信息
    将 turtle1 转换成相对 turtle2 的坐标，在计算线速度和角速度并发布

    实现流程:
        1.包含头文件
        2.初始化 ros 节点
        3.创建 ros 句柄
        4.创建 TF 订阅对象
        5.处理订阅到的 TF
        6.spin
*/
//1.包含头文件
#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2_ros/transform_broadcaster.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"sub_TF");
    // 3.创建 ros 句柄
    ros::NodeHandle nh;
    // 4.创建 TF 订阅对象
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    // 5.处理订阅到的 TF

    // // 6.需要创建发布 /turtle2/cmd_vel 的 publisher 对象
    // ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel",10);

    ros::Rate rate(10);
    while (ros::ok()){
        try{
            //5-1.先获取 turtle1 相对 turtle2 的坐标信息
            geometry_msgs::TransformStamped tfs = buffer.lookupTransform("tbmn_02/odom","tbmn_01_L",ros::Time(0));

            //  6-1.创建 TF 广播器 ---------------------------------------- 注意 static
            static tf2_ros::TransformBroadcaster broadcaster;
            
            tfs.header.seq = 0;
            tfs.header.stamp = ros::Time::now();
            tfs.header.frame_id = "tbmn_01_L";
            //----设置子级坐标系
            tfs.child_frame_id = "tbmn_01_detal_x_detal_y";
            //  6-3.发布
            broadcaster.sendTransform(tfs);
        }
        catch(const std::exception& e){
            // std::cerr << e.what() << '\n';
            ROS_INFO("错误提示:%s",e.what());
        }
        rate.sleep();
        // 6.spin
        ros::spinOnce();
    }

    return 0;
}
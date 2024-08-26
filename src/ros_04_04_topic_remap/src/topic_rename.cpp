#include "ros/ros.h"
#include "std_msgs/String.h"
/*
话题的名称与节点的命名空间、节点的名称是有一定关系的，话题名称大致可以分为三种类型:
需求：演示不同的话题设置
    1.全局(话题参考ROS系统，与节点命名空间平级)
    2.相对(话题参考的是节点的命名空间，与节点名称平级)
    3.私有(话题参考节点名称，是节点名称的子级)

*/

int main(int argc, char *argv[]){

    setlocale(LC_ALL,"");
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"hello");
    // ros::NodeHandle nh;

    //1.全局(话题参考ROS系统，与节点命名空间平级)
    //话题名称需要用/开头，这种情况和节点没有关系
    //ros::Publisher pub =nh.advertise<std_msgs::String> ("/chatter",1000);
    //ros::Publisher pub =nh.advertise<std_msgs::String> ("/yyy/chatter",1000);
    

    //2.相对(话题参考的是节点的命名空间，与节点名称平级)
    //话题名称不需要用/开头，这种情况和节点有关系
    //ros::Publisher pub =nh.advertise<std_msgs::String> ("chatter",1000);

    //3.私有(话题参考节点名称，是节点名称的子级)
    //需要创建特定的 NodeHandle nh("~")
    ros::NodeHandle nh("~");
    //ros::Publisher pub =nh.advertise<std_msgs::String> ("yyy/chatter",1000);
    
    //注意：如果创建的话题是是以/开头，则话题是全局的，而不是私有的
    //全局话题的优先级更高
    ros::Publisher pub =nh.advertise<std_msgs::String> ("/yyy/chatter",1000);

    while (ros::ok()){
            
    }
    return 0;
}
#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char *argv[])
{
    //设置编码
    setlocale(LC_ALL,"");
    //2.初始化ROS节点
    ros::init(argc,argv,"ergouzi");

    //3.创建节点句柄
    ros::NodeHandle nh;

    /* 编码的方式可以更方便的设置:全局、相对与私有参数 */
    
    /*----------ros::param设置参数----------*/
    ros::param::set("/set_A",100); //全局,和命名空间以及节点名称无关
    ros::param::set("set_B",100); //相对,参考命名空间
    ros::param::set("~set_C",100); //私有,参考命名空间与节点名称

    /*----------ros::NodeHandle设置参数----------*/
    nh.setParam("/nh_A",100); //全局,和命名空间以及节点名称无关
    nh.setParam("nh_B",100); //相对,参考命名空间
    ros::NodeHandle nh_private("~");
    nh_private.setParam("nh_C",100);//私有,参考命名空间与节点名称

    return 0;
}

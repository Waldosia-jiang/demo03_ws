#include "ros/ros.h"

/*
  ROS中日志的相关使用
    1.演示日志的基本使用
*/
int main(int argc, char *argv[])
{
    //设置编码
    setlocale(LC_ALL,"");
    //2.初始化ROS节点
    ros::init(argc,argv,"ros_log",ros::init_options::AnonymousName);
    //3.创建节点句柄
    ros::NodeHandle nh;
    //4.日志输出
    ROS_DEBUG("调试信息"); //不会输出到控制台
    ROS_INFO("一般信息"); //默认白色字体
    ROS_WARN("警告信息"); //默认黄色字体
    ROS_ERROR("错误信息");//默认红色字体
    ROS_FATAL("严重错误");//默认红色字体

    return 0;
}

/*
    注意命名空间的使用。

*/
#include "ros/ros.h"

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"haha");

    // ros::NodeHandle nh("turtle1");
    //ros::NodeHandle nh;

    ros::param::set("/turtlesim/background_r",0);
    ros::param::set("/turtlesim/background_g",0);
    ros::param::set("/turtlesim/background_b",0);

    // nh.setParam("/turtlesim/background_b",255);
    // nh.setParam("/turtlesim/background_g",255);
    // nh.setParam("/turtlesim/background_r",255);

    return 0;
}
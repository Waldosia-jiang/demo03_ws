#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "tf/transform_datatypes.h"//转换函数头文件
#include "tf2_ros/transform_broadcaster.h"
#include "tf2/LinearMath/Quaternion.h"
#include "geometry_msgs/TransformStamped.h"

using namespace std;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

    double L_e = 1;
    double theta_expected = 3.1415926 * (5 / 6.0);
    double angle = 3.1415926 * 2;
    double roll_01, pitch_01, yaw_01;//定义存储r\p\y的容器

    double x = 0;
    double y = 0;

    // 定义发布跟随机器人的Twist消息的ROS话题
    std::string follower_robot_name ;

void doPose(const nav_msgs::Odometry::ConstPtr& Pose){

            tf::Quaternion quat;
            tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);
            tf::Matrix3x3(quat).getRPY(roll_01, pitch_01, yaw_01);//进行转换

            x= Pose->pose.pose.position.x + L_e*cos(theta_expected + yaw_01);
            y= Pose->pose.pose.position.y + L_e*sin(theta_expected + yaw_01);  
        }

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"goal_pub");
    //tell the action client that we want to spin a thread by default
    ros::NodeHandle nh;
    ros::Subscriber sub_01;
    sub_01 = nh.subscribe<nav_msgs::Odometry>("robot1/odom",2, doPose);

    MoveBaseClient ac("robot2/move_base", false);
    move_base_msgs::MoveBaseGoal goal;

    ros::Rate rate(0.5);   // 设置循环频率

     while (nh.ok()) {

            //we'll send a goal to the robot to move 1 meter forward
            goal.target_pose.header.frame_id = "map";
            goal.target_pose.header.stamp = ros::Time::now();

            goal.target_pose.pose.position.x = x;
            goal.target_pose.pose.position.y = y;
            goal.target_pose.pose.position.z = 0.0;
            goal.target_pose.pose.orientation.w = 1.0;

            ROS_INFO("Sending goal_R");
            ac.sendGoal(goal);
            // 按照设定的频率休眠
            rate.sleep();

            // if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){

            //     ROS_INFO("Hooray, the base moved 1 meter forward");
            //     ros::shutdown();

            // } else{

            //     ROS_INFO("The base failed to move forward 1 meter for some reason");

            // }
               ros::spinOnce();
            }

    // nh.param<std::string>("follower_robot_name",follower_robot_name,"robot2");

    // 获取预期的角度和距离
    // double theta0,L0;  
    // nh.param<double>("theta_expected", theta_expected,0);
    // nh.param<double>("L_e", L_e, 0);
 
    // }
    return 0;
}
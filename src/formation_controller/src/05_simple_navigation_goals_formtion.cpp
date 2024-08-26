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
#include <std_msgs/Float64.h>
#include <std_msgs/Float64MultiArray.h>

using namespace std;

bool flag_controller = false;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

    double roll, pitch, yaw;//定义存储r\p\y的容器
    double x = 0;
    double y = 0;
    double flag = 0;
    std::string robot_name ;

    void doPose_1(const nav_msgs::Odometry::ConstPtr& Pose){

        tf::Quaternion quat;
        tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);
        tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);//进行转换

        x= Pose->pose.pose.position.x ;
        y= Pose->pose.pose.position.y ; 

        // ROS_INFO("doPose_1 doPose_1");   
    }

    void doPose_2(const std_msgs::Float64MultiArray::ConstPtr& msg){ 

        flag = msg->data[0];
        // ROS_INFO("dis %f",dis);   
    }

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"simple_goal_pub");
    //tell the action client that we want to spin a thread by default

    // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {
        
        //关键点二：动态参数
        robot_name = argv[1];
        ROS_INFO("simple_goal_pub",robot_name.c_str());
    }

    ros::NodeHandle nh;

    ros::Subscriber sub_01 = nh.subscribe("robot1/odom",2, doPose_1);
    ros::Subscriber sub_02 = nh.subscribe(robot_name + "/width",2, doPose_2);

    ros::Rate rate(0.25);   // 设置循环频率

    MoveBaseClient ac(robot_name + "/move_base", false);
    move_base_msgs::MoveBaseGoal goal;

     while (nh.ok()) {
        // 获取预期的角度和距离
        double theta_e , L_e, angle_p ,liner_L ,liner_R ,angle_L , angle_R;
        nh.getParam("theta0", theta_e);
        nh.getParam("L0", L_e);
        nh.getParam("angle_p", angle_p);
        nh.getParam("liner_L", liner_L);
        nh.getParam("liner_R", liner_R);
        nh.getParam("liner_L", angle_L);
        nh.getParam("liner_R", angle_R);
        nh.getParam("flag_controller", flag_controller);

        if(robot_name == "robot2"){

                theta_e = angle_L * theta_e;
                L_e = L_e * liner_L;

            } else{

                theta_e = angle_R * -theta_e;
                L_e = L_e * liner_R;
            }

        theta_e = angle_p * theta_e;

        //we'll send a goal to the robot to move 1 meter forward
        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = x + L_e*cos(theta_e + yaw);
        goal.target_pose.pose.position.y = y + L_e*sin(theta_e + yaw);
        goal.target_pose.pose.position.z = 0.0;
        goal.target_pose.pose.orientation.w = 1.0;

        // ROS_INFO("Sending goal_R");
 
        // if( flag < 0 ) {

        //     ac.sendGoal(goal); 
        //     ROS_INFO("Sending goal");

        // } 

        if( flag_controller == 0 ){

            ac.sendGoal(goal); 
            ROS_INFO("Sending goal");

        } 

        
        // 按照设定的频率休眠
        rate.sleep();
        ros::spinOnce();
        
        }

    return 0;
}
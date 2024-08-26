#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PointStamped.h>
#include <std_msgs/Float64.h>

using namespace std;

std::string robot_name;

ros::Time start_time;

int main(int argc, char** argv)
{
  ros::init(argc, argv, "distance_publisher");

  // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {
        
        //关键点二：动态参数
        robot_name = argv[1];
        ROS_INFO("pub_virture",robot_name.c_str());
    }

  ros::NodeHandle nh;

  // 创建一个tf监听器
  tf::TransformListener listener;

  // 发布距离的话题
  ros::Publisher distance_pub   = nh.advertise<std_msgs::Float64>(robot_name + "/distance", 2);
  ros::Publisher distance_pub_1 = nh.advertise<std_msgs::Float64>("/robot2_3_distance", 2);

  ros::Rate rate(10.0);

  ros::Time start_time = ros::Time::now();

  while (nh.ok())
  {

    tf::StampedTransform transform;
    tf::StampedTransform transform_1;
    try
    {
      // 获取从第一个坐标系到第二个坐标系的变换
      listener.lookupTransform(robot_name + "/base_link",robot_name + "/Virture", ros::Time(0), transform);
      listener.lookupTransform( "robot2/base_link", "robot3/base_link", ros::Time(0), transform_1);
    }
    catch (tf::TransformException ex)
    {
      ROS_ERROR("%s", ex.what());
      continue;
    }

    ros::Time current_vel_time = ros::Time::now();

    // 计算两个坐标系之间的距离
    double distance = std::sqrt(std::pow(transform.getOrigin().x(), 2) +  std::pow(transform.getOrigin().y(), 2) );
    double distance_1 = std::sqrt(std::pow(transform_1.getOrigin().x(), 2) +  std::pow(transform_1.getOrigin().y(), 2));

    double run_time = (current_vel_time - start_time).toSec();                       
    // 发布距离到话题上
    std_msgs::Float64 distance_msg;
    // if(run_time < 2.0) distance = 0;
    distance_msg.data = distance;
    
    std_msgs::Float64 distance_msg_1;
    distance_msg_1.data = distance_1;

    distance_pub.publish(distance_msg);
    distance_pub_1.publish(distance_msg_1);

    rate.sleep();
    ros::spinOnce();
  }

  return 0;
}
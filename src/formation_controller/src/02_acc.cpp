#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Float64.h>

using namespace std;

std::string robot_name;

class AccCalculator
{
public:
  AccCalculator()
  {
    sub_cmd_vel_ = nh_.subscribe(robot_name +"/cmd_vel", 1, &AccCalculator::cmdVelCallback, this);

    pub_linear_acc_= nh_.advertise<std_msgs::Float64>(robot_name +"/linear_acc_", 1);
    pub_angular_acc_ = nh_.advertise<std_msgs::Float64>(robot_name +"/angular_acc_", 1);

    pub_linear_vel = nh_.advertise<std_msgs::Float64>(robot_name +"/linear_vel_", 1);
    pub_angular_vel = nh_.advertise<std_msgs::Float64>(robot_name +"/angular_vel_", 1);

    prev_vel_time_ = ros::Time::now();

  }

  void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg)
  {
    
    double current_linear_vel = msg->linear.x;
    double current_angular_vel = msg->angular.z;
    ros::Time current_vel_time = ros::Time::now();

    double dt = (current_vel_time - prev_vel_time_).toSec();

    double current_linear_acc  = (current_linear_vel - prev_linear_vel_) / dt;
    // if(abs(current_linear_acc) > 5.0)  current_linear_acc = 1.5 *abs(current_linear_acc) / current_linear_acc;

    double current_angular_acc = (current_angular_vel - prev_angular_vel_) / dt;
    // if(abs(current_angular_acc) > 5.0)  current_angular_acc = 1.2 *abs(current_angular_acc) / current_angular_acc;

    prev_linear_vel_ = current_linear_vel;
    prev_angular_vel_ = current_angular_vel;
    prev_vel_time_ = current_vel_time;

    std_msgs::Float64 acc_linear_msg;
    acc_linear_msg.data = current_linear_acc;

    std_msgs::Float64 acc_angular_msg;
    acc_angular_msg.data = current_angular_acc;

    std_msgs::Float64 vel_linear_msg;
    vel_linear_msg.data = current_linear_vel / 2.05;

    std_msgs::Float64 vel_angular_msg;
    vel_angular_msg.data = current_angular_vel / 2;

    pub_linear_acc_.publish(acc_linear_msg);
    pub_angular_acc_.publish(acc_angular_msg);

    pub_linear_vel.publish(vel_linear_msg);
    pub_angular_vel.publish(vel_angular_msg);


}

private:
  ros::NodeHandle nh_;
  ros::Subscriber sub_cmd_vel_;
  ros::Publisher pub_linear_acc_;
  ros::Publisher pub_angular_acc_;
  ros::Publisher  pub_linear_vel;
  ros::Publisher  pub_angular_vel;


  double prev_linear_vel_  = 0.0;
  double prev_angular_vel_ = 0.0;
  ros::Time prev_vel_time_;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "acc_calculator");

  // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {
        
        //关键点二：动态参数
        robot_name = argv[1];
        ROS_INFO("acc_calculator",robot_name.c_str());
    }

    
  AccCalculator acc_calculator;

  ros::spin();
  return 0;
}
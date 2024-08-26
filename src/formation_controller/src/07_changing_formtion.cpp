#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Float64.h>
#include <cmath>
#include <std_msgs/Float64MultiArray.h>

using namespace std;

class Transformtion {
public:
  
  double width_left_robot2 = 0;
  double width_right_robot2 = 0;

  double width_left_robot3 = 0;
  double width_right_robot3 = 0;

  Transformtion() {
    // 订阅激光雷达数据
    width_sub_robot1 = nh_.subscribe("robot1/width", 1, &Transformtion::WidthCallback_robot1, this);
    width_sub_robot2 = nh_.subscribe("robot2/width", 1, &Transformtion::WidthCallback_robot2, this);
    width_sub_robot3 = nh_.subscribe("robot3/width", 1, &Transformtion::WidthCallback_robot3, this);
  }

  void WidthCallback_robot2(const std_msgs::Float64MultiArray::ConstPtr& msg) {
    
     width_left_robot2 = msg->data[1];
     width_right_robot2 = msg->data[2]; 
  }

  void WidthCallback_robot3(const std_msgs::Float64MultiArray::ConstPtr& msg) {

     width_left_robot3 = msg->data[1];
     width_right_robot3 = msg->data[2];
  }

  void WidthCallback_robot1(const std_msgs::Float64MultiArray::ConstPtr& msg) {

     double width = msg->data[0];
    //  ROS_INFO("robot1/width: %f", msg->data);
    // // 横着走
    //  if(width >= 2.5){
       
    //   nh_.setParam("L0", 1);
    //   nh_.setParam("angle_p", 0.25);
    //   nh_.setParam("liner_L", 1);
    //   nh_.setParam("liner_R", 1);
    //   nh_.setParam("angle_L", 1);
    //   nh_.setParam("angle_R", 1);
      
    //  }
    // 三角队形
    
     if( 1.3 <= width  && ( width_left_robot2 > 1 &&  width_right_robot3 > 1)){

      if( width > 2.0 )  width = 2.0;
      
      nh_.setParam("L0", 1.1);
      double L_0;
      nh_.param<double>("L0", L_0, 0);
      double temp = (M_PI - asin(((width -0.6) / 2) / L_0))/(2 * M_PI); 

      nh_.setParam("angle_p", temp);
      nh_.setParam("liner_L", 1);
      nh_.setParam("liner_R", 1);
      nh_.setParam("angle_L", 1);
      nh_.setParam("angle_R", 1);
     }

     // 一字队形
     if(0.6 <= width && width <= 1.2 && ( width_left_robot2 > 1 &&  width_right_robot3 > 1)){
      
      nh_.setParam("L0", 1);
      nh_.setParam("liner_L", 0.8);
      nh_.setParam("angle_L", 0.5);

      nh_.setParam("liner_R", 1.6);
      nh_.setParam("angle_R", 0.5);
      nh_.setParam("angle_p", 1); 

     }
  }

     
private:
  ros::NodeHandle nh_;
  ros::Subscriber width_sub_robot1;
  ros::Subscriber width_sub_robot2;
  ros::Subscriber width_sub_robot3;

};

int main(int argc, char** argv) {

  ros::init(argc, argv, "formtion_changing");

  Transformtion formtion;
  ros::spin();
  return 0;
}
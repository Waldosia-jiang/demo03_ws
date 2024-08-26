#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64MultiArray.h>
#include <algorithm>
#include <cmath>
using namespace std;

std::string robot_name ;

class obstacle_detector{

public:
      obstacle_detector(){  

        // 订阅激光雷达数据
        scan_sub_ = nh_.subscribe(robot_name + "/scan", 2, &obstacle_detector::scanCallback, this);
        // 发布测量数据
        width_pub = nh_.advertise<std_msgs::Float64MultiArray>(robot_name + "/width", 2);
        
      }

void scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan) {
    
    // 检测激光数据中的前方障碍物宽度
    double min_distance = 0; // 障碍物最小距离，初始化为激光测量范围的最大值
    double max_distance = 2.5; // 障碍物最小距离，初始化为激光测量范围的最大值
    double obstacle_width = 2.5; // 障碍物宽度，初始化为5

    // ROS_INFO("scan->ranges.size(): %f", scan->ranges[1]);
    
    int left_flag = 0;
    double left_distance = 0;

    bool flag_L = false;
    bool flag_R = false;

    int right_flag = 359;
    double right_distance = 0;

    std_msgs::Float64MultiArray width_msg;
    width_msg.data.resize(3);

    width_msg.data[0] = 0;
    width_msg.data[1] = 10;
    width_msg.data[2] = 10;

    //robot1计算正前方左右六十度
   if( robot_name == "robot1"){

    for (int left = 0; left <= 90; ++left) {

        if(scan->ranges[left] < width_msg.data[1])  width_msg.data[1] = scan->ranges[left]; //更新左边最小值

        if ( scan->ranges[left] < max_distance ) {
            ROS_INFO("left: %f,%d", scan->ranges[left],left);
            left_flag = left;
            left_distance = scan->ranges[left];
            flag_L = true;
            break;
        } 
    }
    
    for (int right = 359; right >= 270; --right) {

      if(scan->ranges[right] < width_msg.data[2])  width_msg.data[2] = scan->ranges[right]; //更新右边最小值

      if (scan->ranges[right] < max_distance) {

          ROS_INFO("right: %f,%d", scan->ranges[right],right);
          right_flag = right;
          right_distance = scan->ranges[right];
          flag_R = true;
          break;     
      } 

    }
    
    if(left_flag == 0   && right_flag != 359 ) obstacle_width = 2 * right_distance * sin(scan->angle_increment * (359 -right_flag));
    if(left_flag != 0   && right_flag == 359 ) obstacle_width = 2 * left_distance * sin(scan->angle_increment * left_flag);
    if(left_flag  < (359 - right_flag) && left_flag != 0 && right_flag != 359)  obstacle_width = 2 * left_distance * sin(scan->angle_increment * left_flag);
    if(left_flag >= (359 - right_flag) && left_flag != 0 && right_flag != 359)  obstacle_width = 2 * right_distance * sin(scan->angle_increment * (359 - right_flag));
    if(left_flag == 0 && right_flag == 359 && scan->ranges[0] < 1.0)  obstacle_width = 0;
    
    ROS_INFO("obstacle_width: %f", obstacle_width);
    width_msg.data[0] = obstacle_width; 
    width_pub.publish(width_msg);

   }

   if( robot_name == "robot2"){

        int left_tag = 0;

        for (int left = 10; left <= 90; ++left) {

            if(scan->ranges[left] < width_msg.data[1])  width_msg.data[1] = scan->ranges[left]; //更新左边最小值

            if(scan->ranges[left] < 0.3) ++left_tag;

                if(left_tag > 30) {

                    width_msg.data[0] = -1;
                    width_pub.publish(width_msg);
                    ROS_INFO("left_tag %d",left_tag);
                    break;
                }

        }

        for (int left = 349; left >= 270; --left) {

            if(scan->ranges[left] < width_msg.data[2])  width_msg.data[2] = scan->ranges[left]; //更新右边最小值

            if(scan->ranges[left] < 0.3) ++left_tag;

                if(left_tag > 30) {

                    width_msg.data[0] = -1;
                    width_pub.publish(width_msg);
                    ROS_INFO("left_tag %d",left_tag);
                    break;
                }

        }

        width_pub.publish(width_msg);
   }
    

   if( robot_name == "robot3"){

        int left_tag = 0;

        for (int left = 10; left <= 90; ++left) {

            if(scan->ranges[left] < width_msg.data[1])  width_msg.data[1] = scan->ranges[left]; //更新左边最小值

            if(scan->ranges[left] < 0.3) ++left_tag;

                if(left_tag > 20) {

                    width_msg.data[0] = -1;
                    width_pub.publish(width_msg);
                    ROS_INFO("left_tag %d",left_tag);
                    break;
                }

        }

        for (int left = 349; left >= 270; --left) {

            if(scan->ranges[left] < width_msg.data[2])  width_msg.data[2] = scan->ranges[left]; //更新右边最小值

            if(scan->ranges[left] < 0.3) ++left_tag;

                if(left_tag > 20) {

                    width_msg.data[0] = -1;
                    width_pub.publish(width_msg);
                    ROS_INFO("left_tag %d",left_tag);
                    break;
                }

        }

        width_pub.publish(width_msg);
   }
}

private:

ros::NodeHandle nh_;
ros::Subscriber scan_sub_;
ros::Publisher width_pub;

};

int main(int argc, char *argv[]) {
    
  ros::init(argc, argv, "obstacle_detector");

  // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {   
        //关键点二：动态参数
        robot_name = argv[1];
        ROS_INFO("obstacle",robot_name.c_str());
    }

  obstacle_detector detector;
  
  ros::spin();
  return 0;
}

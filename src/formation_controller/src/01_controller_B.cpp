#include <ros/ros.h>   // ROS头文件
#include <tf/transform_listener.h>   // tf库头文件
#include <geometry_msgs/Twist.h>   // geometry_msgs库中Twist消息类型头文件
#include <nav_msgs/Odometry.h>   // nav_msgs库中Odometry消息类型头文件
#include <dynamic_reconfigure/server.h>   // dynamic_reconfigure库中Server模块头文件
#include <formation_controller/tf_pidConfig.h>   // 自定义的tf_pidConfig消息类型头文件
#include <cmath>   // 数学库头文件
#include <string> 
#include <std_msgs/Float64.h>
#include <time.h>
#include <ctime>

using namespace std;

double k_1 = 1.3;
double k_2 = 1.3;
double k_3 = 1;

double w_leader = 0;
double v_leader = 0;

double roll_1, pitch_1, yaw_1;
double roll_2, pitch_2, yaw_2;

double dis_2=0;
double dis_3=0;

double dis_4=0;

bool flag_controller = false;

ros::Time start_time;

void odom_cb(const nav_msgs::Odometry::ConstPtr& msg){

    w_leader = msg->twist.twist.angular.z;
    v_leader = msg->twist.twist.linear.x;
}

void odom_Virture(const nav_msgs::Odometry::ConstPtr& pose){

    tf::Quaternion quat;
    tf::quaternionMsgToTF(pose->pose.pose.orientation, quat);  
    tf::Matrix3x3(quat).getRPY(roll_1, pitch_1, yaw_1);//进行转换1
}

void odom_follower(const nav_msgs::Odometry::ConstPtr& Pose){

    tf::Quaternion quat;
    tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);  
    tf::Matrix3x3(quat).getRPY(roll_2, pitch_2, yaw_2);//进行转换1
}

void doPose_2(const std_msgs::Float64::ConstPtr& msg){ 

    dis_2 = msg->data;
 
}

void doPose_3(const std_msgs::Float64::ConstPtr& msg){ 

    dis_3 = msg->data;
 
}

void doPose_5(const std_msgs::Float64::ConstPtr& msg){ 

    dis_4 = msg->data;
 
}

std::string follower_robot_name ;

int main(int argc, char** argv) {

    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc, argv, "Controller");   // 初始化ROS节点
    // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {
        
        //关键点二：动态参数
        follower_robot_name = argv[1];
        ROS_INFO("乌龟 %s 坐标发送启动",follower_robot_name.c_str());
    }

    ros::NodeHandle nh;   // 创建节点句柄
    tf::TransformListener listener;   // 创建tf::TransformListener对象

    // 定义订阅领导机器人的Odometry消息的ROS话题
    std::string leader_robot_name = "robot1";

    ros::Subscriber leader_vel = nh.subscribe(leader_robot_name +"/odom", 1, odom_cb);
   
    ros::Subscriber sub_1 = nh.subscribe(follower_robot_name + "/Virture", 1, odom_Virture);
    ros::Subscriber sub_2 = nh.subscribe(follower_robot_name +"/odom", 1, odom_follower);

    ros::Subscriber sub_03 = nh.subscribe("robot2/distance",2, doPose_2);
    ros::Subscriber sub_04 = nh.subscribe("robot3/distance",2, doPose_3);

    ros::Subscriber sub_05 = nh.subscribe("/robot2_3_distance",2, doPose_5);
    
    ros::Publisher follower_vel = nh.advertise<geometry_msgs::Twist>(follower_robot_name + "/cmd_vel", 2);

    ros::Publisher leader_vel_pub = nh.advertise<geometry_msgs::Twist>(leader_robot_name + "/cmd_vel", 2);

    ros::Time start_time = ros::Time::now();

    ros::Rate rate(10.0);   // 设置循环频率

    srand((unsigned int) time(NULL));

    while (nh.ok()) {

         // 获取预期的角度和距离
        double theta0 , L0, angle_p ,liner_L ,liner_R ,angle_L , angle_R;

        nh.getParam("theta0", theta0);
        nh.getParam("L0", L0);
        nh.getParam("angle_p", angle_p);
        nh.getParam("liner_L", liner_L);
        nh.getParam("liner_R", liner_R);
        nh.getParam("angle_L", angle_L);
        nh.getParam("angle_R", angle_R);
        nh.getParam("flag_controller", flag_controller);


        if(follower_robot_name == "robot2"){

            theta0 = angle_L * theta0;
            L0 = L0 * liner_L;
        } else{

            theta0 = angle_R * -theta0;
            L0 = L0 * liner_R;
        }

        theta0 = angle_p * theta0;

        // ROS_INFO("shdsghvjjdgjsdgj: %s %s %f %f ",leader_robot_name.c_str() ,follower_robot_name.c_str() ,theta0,L0);
        // 创建Transform对象，存储跟随机器人到领导机器人的坐标转换关系
        tf::StampedTransform transform;
        try {
            // 查找跟随机器人到领导机器人的坐标转换关系
            listener.lookupTransform( follower_robot_name + "/base_link" ,follower_robot_name + "/Virture",ros::Time(0), transform);
        }
        catch (tf::TransformException ex) {
            ROS_ERROR("%s", ex.what());
            continue;
        }

        // 获取坐标变换矩阵中的平移和旋转信息
        double x = transform.getOrigin().x();
        x = x + 0.04 *abs(x)/x;
        double y = transform.getOrigin().y();
        y = y + 0.04 *abs(y)/y;
        double theta = tf::getYaw(transform.getRotation());

        double e_x = cos(yaw_2) * x + sin(yaw_2) * y ;
        double e_y = -sin(yaw_2) * x + cos(yaw_2) * y ;

        ros::Time current_vel_time = ros::Time::now();
        double run_time = (current_vel_time - start_time).toSec();


        //5-2.根据坐标信息生成速度信息 -- geometry_msgs/Twist.h
        geometry_msgs::Twist twist;
      
        twist.linear.x = v_leader * cos(theta) + k_1 * x ;
        if(twist.linear.x > 1.5 || twist.linear.x < -1.5 )  twist.linear.x  =  1.5 * abs(twist.linear.x) / twist.linear.x;

        twist.angular.z = w_leader + (k_1 * y * sin(theta) / theta) + k_2 * theta;
        if(twist.linear.z > 0.6 || twist.linear.z < -0.6 )  twist.linear.z  =  0.6 * abs(twist.linear.z) / twist.linear.z;


        //5-3.发布速度信息 -- 需要提前创建 publish 对象
        
        
        // if( flag_controller == 1 ) 
        

        if(dis_4 < 0.7 && follower_robot_name == "robot3"){

            twist.linear.x = 0;
            twist.angular.z = 0;

        } 
        follower_vel.publish(twist);

        geometry_msgs::Twist msg_1;

        int flag_flag = rand() % 2;
              

                if( flag_flag == 0){

                    msg_1.linear.x = 0.3 ;
                    msg_1.angular.z = 0.050 ;

                }else {

                    msg_1.linear.x = 0.3 ;
                    msg_1.angular.z = -0.04 ;

                }

                
            // }
          
            leader_vel_pub.publish(msg_1);

        

        // 按照设定的频率休眠
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}

/*  
    订阅 turtle1 和 turtle2 的 TF 广播信息，查找并转换时间最近的 TF 信息
    将 turtle1 转换成相对 turtle2 的坐标，在计算线速度和角速度并发布

    实现流程:
        1.包含头文件
        2.初始化 ros 节点
        3.创建 ros 句柄
        4.创建 TF 订阅对象
        5.处理订阅到的 TF
        6.spin
*/
//1.包含头文件
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

class SubscribeAndPublish{
public:
        SubscribeAndPublish(){
            pub = nh.advertise<geometry_msgs::Twist>("/tbmn_02/cmd_vel",2);
            sub_01 = nh.subscribe<nav_msgs::Odometry>("tbmn_01/odom",2, &SubscribeAndPublish::doPose_01 , this);
            sub_02 = nh.subscribe<nav_msgs::Odometry>("tbmn_02/odom",2, &SubscribeAndPublish::doPose_02 , this);        
        }

        // void doPose_01(const nav_msgs::Odometry::ConstPtr& Pose,double &roll_01,double &pitch_01,double &yaw_01,double &V_01,double &W_01){
        void doPose_01(const nav_msgs::Odometry::ConstPtr& Pose){

            tf::Quaternion quat;
            tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);
            tf::Matrix3x3(quat).getRPY(roll_01, pitch_01, yaw_01);//进行转换

            X_01 = Pose->pose.pose.position.x;
            Y_01 = Pose->pose.pose.position.y;

            V_01 = Pose->twist.twist.linear.x;
            W_01 = Pose->twist.twist.angular.z;

            X_01_L = Pose->pose.pose.position.x + L_e*cos((5/12.0)* angle + yaw_01);
            Y_01_L = Pose->pose.pose.position.y + L_e*sin((5/12.0)* angle + yaw_01);

            ROS_INFO("doPose_01: %f %f %f %f ",X_01 ,Y_01 ,V_01 , W_01);
        }

        void doPose_02(const nav_msgs::Odometry::ConstPtr& Pose){

            tf::Quaternion quat;
            tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);
            tf::Matrix3x3(quat).getRPY(roll_02, pitch_02, yaw_02);//进行转换

            X_02 = Pose->pose.pose.position.x;
            Y_02 = Pose->pose.pose.position.y;

            V_02 = Pose->twist.twist.linear.x;
            W_02 = Pose->twist.twist.angular.z;

            ROS_INFO("doPose_02: %f %f %f %f ",X_02 ,Y_02 ,V_02 , W_02); 

            // ros::Rate rate(10); 
            double L_truth = sqrt(pow(pow(X_01 - X_02,2) + pow(Y_01 - Y_02,2),2));
            double angle_truth = 3.1415926 + atan2((Y_01 - Y_02),(X_01 - X_02)) - yaw_01;
            double x_e =  cos(yaw_02)*(X_01_L -  X_02) + sin(yaw_02)*(Y_01_L -  Y_02);
            double y_e = -sin(yaw_02)*(X_01_L -  X_02) + cos(yaw_02)*(Y_01_L -  Y_02) ;

            //5-2.根据坐标信息生成速度信息 -- geometry_msgs/Twist.h
            geometry_msgs::Twist twist;
            // twist.linear.x = k1 * x_e + V_01 * cos(yaw_01 - yaw_02) - L_e * W_01 *sin(theta_expected + yaw_01 - yaw_02);
            // twist.linear.x = k1 * x_e + V_01 * cos(yaw_01 - yaw_02) - L_e * W_01 *sin(theta_expected + yaw_01 - yaw_02);
            // twist.linear.x = k1 * x_e + V_01 * cos(yaw_01 - yaw_02) ;
            double  line_flag = sqrt(pow(X_02 - X_01_L,2) + pow(Y_02 - Y_01_L,2)) - L_e;
            if ( line_flag < 0 ) twist.linear.x = 0;
            else twist.linear.x = k1 * (sqrt(pow(X_02 - X_01_L,2) + pow(Y_02 - Y_01_L,2)) - L_e);

            if(twist.linear.x > 2)  twist.linear.x = 2;
            if(twist.linear.x < -2) twist.linear.x = -2;

            // twist.angular.z = (V_01 * sin(yaw_01 - yaw_02) + L_e * W_01 *cos(theta_expected + yaw_01 - yaw_02) + k2 * y_e) / 0.1;
            // twist.angular.z = (V_01 * sin(yaw_01 - yaw_02) + L_e * W_01 *cos(theta_expected + yaw_01 - yaw_02) + k2 * y_e) / x_e;
            // twist.angular.z = W_01 + V_01 * (k2 * y_e + k3 * sin(yaw_01 - yaw_02) );
            if((yaw_02 - yaw_01) > 0)  twist.angular.z = k2 * (yaw_02 - yaw_01); 
            else  twist.angular.z =  -k2 * (yaw_02 - yaw_01);

            if(twist.angular.z > 1)  twist.angular.z = 1;
            if(twist.angular.z < -1) twist.angular.z = -1;

            // ROS_INFO(" result: %f %f %f %f  %f ",x_e , V_01  ,cos(yaw_01 - yaw_02) , W_01 , sin(theta_expected + yaw_01 - yaw_02));
            ROS_INFO("twist.linear.x : %f,twist.angular.z :%f",twist.linear.x , twist.angular.z);

            //5-3.发布速度信息 -- 需要提前创建 publish 对象
            pub.publish(twist);
        }

private:
// 3.创建 ros 句柄
    ros::NodeHandle nh;
    ros::Publisher pub;
    ros::Subscriber sub_01;
    ros::Subscriber sub_02;

    double detal_x,detal_y;
    int L_e = 1;
    double theta_expected = 3.1415926 * (5 / 6.0);
    double angle = 3.1415926 * 2;

    double roll_01, pitch_01, yaw_01;//定义存储r\p\y的容器
    double roll_02, pitch_02, yaw_02;//定义存储r\p\y的容器

    double V_01,V_02;
    double W_01,W_02;
    double X_01,X_02;
    double Y_01,Y_02;

    double X_01_L,Y_01_L;

    int k1 = 5;
    int k2 = 5;
    int k3 = 5;
};

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"sub_pub");
    
    SubscribeAndPublish Sub;

    ros::spin();
    // }
    return 0;
}
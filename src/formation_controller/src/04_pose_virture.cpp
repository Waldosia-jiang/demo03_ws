//1.包含头文件
#include "tf/transform_datatypes.h"//转换函数头文件
#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "tf2_ros/transform_broadcaster.h"
#include "tf2/LinearMath/Quaternion.h"
#include "geometry_msgs/TransformStamped.h"
#include "nav_msgs/Odometry.h"

std::string robot_name;
double x,y;
double roll, pitch, yaw;//定义存储r\p\y的容器

void doPose_callback(const nav_msgs::Odometry::ConstPtr& Pose){

    tf::Quaternion quat;
    tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);  
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);//进行转换1

    //关键点1：动态传入参数
    x = Pose->pose.pose.position.x ;
    y = Pose->pose.pose.position.y ;

} 


int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"pub_virture");

    ros::NodeHandle nh_;

    ros::Subscriber sub_ = nh_.subscribe<nav_msgs::Odometry>("robot1/odom",2,doPose_callback);

    // 3.解析传入的命名空间
    if (argc != 2){
        ROS_ERROR("请传入正确的参数");
    } else {
        
        //关键点二：动态参数
        robot_name = argv[1];
        ROS_INFO("pub_virture",robot_name.c_str());
    }

    ros::Rate rate(10.0);   // 设置循环频率

    while(nh_.ok()){

        // 获取预期的角度和距离
        double theta_e , L_e, angle_p ,liner_L ,liner_R ,angle_L , angle_R;
        nh_.getParam("theta0", theta_e);
        nh_.getParam("L0", L_e);
        nh_.getParam("angle_p", angle_p);
        nh_.getParam("liner_L", liner_L);
        nh_.getParam("liner_R", liner_R);
        nh_.getParam("angle_L", angle_L);
        nh_.getParam("angle_R", angle_R);

        if(robot_name == "robot2"){

                theta_e = angle_L * theta_e;
                L_e = L_e * liner_L;

            } else{

                theta_e = angle_R * -theta_e;
                L_e = L_e * liner_R;
            }

        theta_e = angle_p * theta_e;

        //  6-1.创建 TF 广播器 ---------------------------------------- 注意 static
        static tf2_ros::TransformBroadcaster broadcaster;
        //  6-2.将 pose 信息转换成 TransFormStamped
        geometry_msgs::TransformStamped tfs;
        tfs.header.seq = 0;
        tfs.header.stamp = ros::Time::now();

            //关键点1：动态传入参数
        tfs.transform.translation.x = x + L_e*cos(theta_e + yaw);
        tfs.transform.translation.y = y + L_e*sin(theta_e + yaw);
        tfs.header.frame_id = "robot1/odom";
        //----设置子级坐标系
        tfs.child_frame_id = robot_name + "/Virture";
        tfs.transform.translation.z = 0.0;

        tf2::Quaternion qtn;
        qtn.setRPY(0,0,yaw );
        tfs.transform.rotation.x = qtn.getX();
        tfs.transform.rotation.y = qtn.getY();
        tfs.transform.rotation.z = qtn.getZ();
        tfs.transform.rotation.w = qtn.getW();
        //  6-3.发布
        broadcaster.sendTransform(tfs);

        // 按照设定的频率休眠

        ros::spinOnce();
    }
    return 0;
}
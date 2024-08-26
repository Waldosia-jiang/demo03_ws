/*  
    该文件实现:需要订阅 turtle1 和 turtle2 的 pose，然后广播相对 world 的坐标系信息

    注意: 订阅的两只 turtle,除了命名空间(turtle1 和 turtle2)不同外,
          其他的话题名称和实现逻辑都是一样的，
          所以我们可以将所需的命名空间通过 args 动态传入

    实现流程:
        1.包含头文件
        2.初始化 ros 节点
        3.解析传入的命名空间
        4.创建 ros 句柄
        5.创建订阅对象
        6.回调函数处理订阅的 pose 信息
            6-1.创建 TF 广播器
            6-2.将 pose 信息转换成 TransFormStamped
            6-3.发布
        7.spin
*/
//1.包含头文件
#include "tf/transform_datatypes.h"//转换函数头文件
#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "tf2_ros/transform_broadcaster.h"
#include "tf2/LinearMath/Quaternion.h"
#include "geometry_msgs/TransformStamped.h"
#include "nav_msgs/Odometry.h"
//保存乌龟名称
std::string turtle_name;

int L_e = 1.0;
double angle = 2 * 3.1415926;

void doPose(const nav_msgs::Odometry::ConstPtr& Pose){

    //  6-1.创建 TF 广播器 ---------------------------------------- 注意 static
    static tf2_ros::TransformBroadcaster broadcaster;
    //  6-2.将 pose 信息转换成 TransFormStamped
    geometry_msgs::TransformStamped tfs;
    tfs.header.seq = 0;
    tfs.header.stamp = ros::Time::now();
    tfs.header.frame_id = "world";
    //----设置子级坐标系B
    tfs.child_frame_id = "tbmn_03/Virture";

    tf::Quaternion quat;
    tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);
    double roll, pitch, yaw;//定义存储r\p\y的容器
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);//进行转换
    
    //关键点1：动态传入参数
    tfs.transform.translation.x = Pose->pose.pose.position.x + L_e*cos(-(5/12.0)* angle + yaw);
    tfs.transform.translation.y = Pose->pose.pose.position.y + L_e*sin(-(5/12.0)* angle + yaw);
    tfs.transform.translation.z = 0.0;

    tf2::Quaternion qtn;
    qtn.setRPY(0,0,yaw);
    tfs.transform.rotation.x = qtn.getX();
    tfs.transform.rotation.y = qtn.getY();
    tfs.transform.rotation.z = qtn.getZ();
    tfs.transform.rotation.w = qtn.getW();
    //  6-3.发布
    broadcaster.sendTransform(tfs);

} 

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"pub_R");
    // 4.创建 ros 句柄
    ros::NodeHandle nh;
    // 5.创建订阅对象
    ros::Subscriber sub = nh.subscribe<nav_msgs::Odometry>("tbmn_01/odom",10,doPose);
    //     6.回调函数处理订阅的 pose 信息
    //         6-1.创建 TF 广播器
    //         6-2.将 pose 信息转换成 TransFormStamped
    //         6-3.发布
    // 7.spin
    ros::spin();
    return 0;
}
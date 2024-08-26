#include <ros/ros.h>   // ROS头文件
#include <tf/transform_listener.h>   // tf库头文件
#include <geometry_msgs/Twist.h>   // geometry_msgs库中Twist消息类型头文件
#include <nav_msgs/Odometry.h>   // nav_msgs库中Odometry消息类型头文件
#include <dynamic_reconfigure/server.h>   // dynamic_reconfigure库中Server模块头文件
#include <formation_controller/tf_pidConfig.h>   // 自定义的tf_pidConfig消息类型头文件
#include <cmath>   // 数学库头文件
#include <string>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64MultiArray.h>
#include <time.h>
#include <ctime>

using namespace std;

double k_1 = 1.5;
double k_2 = 1.5;

double k_3 = 2;

double d = 0.1;

double w_leader = 0;
double v_leader = 0;

double linear_acc_date = 0;
double angular_acc_date = 0;

ros::Time start_time;
ros::Time pre_vel_time;

int flag =0;

double pub_flag = 0;

double dis_2=0;
double dis_3=0;
double dis_4=0;

bool flag_controller = false;

double roll_2, pitch_2, yaw_2;

void odom_cb(const nav_msgs::Odometry::ConstPtr& msg){

    w_leader = msg->twist.twist.angular.z;
    v_leader = msg->twist.twist.linear.x;
}

void linear_acc(const std_msgs::Float64::ConstPtr& msg){ 

    linear_acc_date = msg->data;

}

void angular_acc(const std_msgs::Float64::ConstPtr& msg){

    angular_acc_date = msg->data;
}

void doPose_2(const std_msgs::Float64MultiArray::ConstPtr& msg){ 

    pub_flag = msg->data[0];
 
}

void doPose_3(const std_msgs::Float64::ConstPtr& msg){ 

    dis_2 = msg->data;
 
}

void doPose_4(const std_msgs::Float64::ConstPtr& msg){ 

    dis_3 = msg->data;
 
}

void doPose_5(const std_msgs::Float64::ConstPtr& msg){ 

    dis_4 = msg->data;
 
}

void odom_follower(const nav_msgs::Odometry::ConstPtr& Pose){

    tf::Quaternion quat;
    tf::quaternionMsgToTF(Pose->pose.pose.orientation, quat);  
    tf::Matrix3x3(quat).getRPY(roll_2, pitch_2, yaw_2);//进行转换1
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
    // ros::Subscriber sub_2 = nh.subscribe(follower_robot_name +"/odom", 1, odom_follower);

    // ros::Subscriber follower_linear_acc = nh.subscribe(follower_robot_name +"/linear_acc_", 1, linear_acc);
    // ros::Subscriber follower_angular_acc = nh.subscribe(follower_robot_name +"/angular_acc_", 1, angular_acc);

    ros::Subscriber sub_02 = nh.subscribe(follower_robot_name + "/width",2, doPose_2);

    ros::Subscriber sub_03 = nh.subscribe("robot2/distance",2, doPose_3);
    ros::Subscriber sub_04 = nh.subscribe("robot3/distance",2, doPose_4);

    ros::Subscriber sub_05 = nh.subscribe("/robot2_3_distance",2, doPose_5);
   
    ros::Publisher follower_vel = nh.advertise<geometry_msgs::Twist>(follower_robot_name + "/cmd_vel", 2);
    ros::Publisher leader_vel_pub = nh.advertise<geometry_msgs::Twist>(leader_robot_name + "/cmd_vel", 2);

    ros::Time start_time = ros::Time::now();
      

    ros::Rate rate(10);   // 设置循环频率


    while (nh.ok()) {

        srand((unsigned int) time(NULL));

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
            listener.lookupTransform(leader_robot_name + "/base_link", follower_robot_name + "/base_link", ros::Time(0), transform);
        }
        catch (tf::TransformException ex) {
            ROS_ERROR("%s", ex.what());
            continue;
        }

        // ROS_INFO("shdsghvjjdgjsdgj: %s %s %f %f ",leader_robot_name.c_str() ,follower_robot_name.c_str() ,theta0,L0);

        // 获取坐标变换矩阵中的平移和旋转信息
        // double x = transform.getOrigin().x() +  0.005 * abs(rand()) /rand() ;
        // double y = transform.getOrigin().y() +  0.005 * abs(rand()) /rand();
        double x = transform.getOrigin().x();
        double y = transform.getOrigin().y();
        double theta = tf::getYaw(transform.getRotation());

        // 计算纵向误差B和横向误差A
        double A = L0 * cos(theta0) - x ;
        double B = L0 * sin(theta0) - y ;

        ros::Time current_vel_time = ros::Time::now();

        double run_time = (current_vel_time - start_time).toSec();
       
        

        //  计算跟随机器人的线速度和角速度
        double v_follower = (k_1 * A - y * w_leader + v_leader) * cos(theta) + (k_2 * B + x * w_leader) * sin(theta);
        // 线加速度限制
        // if(abs(linear_acc_date) >= 2.0) v_follower = v_leader + 1.5 * (abs(linear_acc_date) / linear_acc_date) * dt;
        // 输出限制幅度
        if(v_follower > 1.5 || v_follower < -1.5 )  v_follower  =  1.5 * abs(v_follower) / v_follower;


        double w_follower = ((k_2 * B + x * w_leader) * cos(theta) - (k_1 * A - y * w_leader + v_leader) * sin(theta)) / d;
        // 角加速度限制
        // if(abs(angular_acc_date) >=2.0 )  w_follower = w_leader + 1.2 * (abs(angular_acc_date) / angular_acc_date) * dt;
        // 输出限制幅度
        if(w_follower > 0.6 || w_follower < -0.6 )  w_follower  =  0.6 * abs(w_follower) / w_follower;

         

        //  创建Twist消息并填充数据
        geometry_msgs::Twist msg;
        msg.linear.x = v_follower;
        msg.angular.z = w_follower;

        //  发布Twist消息
         // 延时
        for(int i = 0 ;i <= 100 && flag != 1; ++i ) {

            if(i == 100)  flag =1;

            msg.linear.x = 0;
            msg.angular.z = 0;
            follower_vel.publish(msg);

        }
        
        // if( pub_flag != -1 ) follower_vel.publish(msg);
        // if( flag_controller == 1 ) follower_vel.publish(msg);
        // if(dis_4 < 0.7 && follower_robot_name == "robot3"){

        //     msg.linear.x = 0;
        //     msg.angular.z = 0;

        // } 
        follower_vel.publish(msg);

        // int F = -rand()%101+75;

        // geometry_msgs::Twist msg_1;

        // if(dis > 0.5){     
            
        //     msg_1.linear.x = 0.0;
        //     msg_1.angular.z = 0.0;
        //     leader_vel_pub.publish(msg_1);
            
        // }else{

        //     msg_1.linear.x = 0.9;
        //     msg_1.angular.z = 0.0;
        //     leader_vel_pub.publish(msg_1);
        // }

        geometry_msgs::Twist msg_1;

        // if(dis_2 > 0.6 || dis_3 > 0.6){     
            
        //     msg_1.linear.x = 0.0;
        //     msg_1.angular.z = 0.0;
        //     leader_vel_pub.publish(msg_1);

        // }else{

            // if(2 < run_time  && run_time < 15){

            //     msg_1.linear.x = 0.15 + 0.01 * abs(rand()) /rand();
            //     msg_1.angular.z = 0.001 * (abs(rand()) /rand());    
            // }
            
            // if( run_time > 15){
                    
            // int flag_flag = rand() % 2;
              

                // if( flag_flag  == 0){

                    msg_1.linear.x = 0.6;
                    msg_1.angular.z = 0;

                // }

            //     if(flag_flag  == 1){

            //         msg_1.linear.x = 0.3;
            //         msg_1.angular.z = -0.045 ;

            //     }

                
            // // }
          
            leader_vel_pub.publish(msg_1);

        // }
        // }else{

            // if(6 < run_time  && run_time < 10){

            //     msg_1.linear.x = 0.6;
            //     msg_1.angular.z = 0; 
                 

            // }

            // if(10 < run_time  && run_time < 15){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0.2;
                 
                
            // }

            // if(15 < run_time  && run_time < 17){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0;
                 
                
            // }

            // if(17 < run_time  && run_time < 22){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = -0.2;    

            // }

            //  if(35 < run_time  && run_time < 45){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0.2;
                 
                
            // }

            // if(45 < run_time  && run_time < 55){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = -0.2;    

            // }

            // if(22 < run_time  ){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0;
                
            // }
           
        // }else{

        //     if(6 < run_time  && run_time < 15){

        //         msg_1.linear.x = 0.2;
        //         msg_1.angular.z = 0; 
                 

        //     }

        //     if(15 < run_time  && run_time < 25){

        //         msg_1.linear.x = 0.9;
        //         msg_1.angular.z = 0.2;
                 
                
        //     }

        //     if(25 < run_time  && run_time < 35){

        //         msg_1.linear.x = 0.9;
        //         msg_1.angular.z = -0.2;    

        //     }

        //      if(35 < run_time  && run_time < 45){

        //         msg_1.linear.x = 0.9;
        //         msg_1.angular.z = 0.2;
                 
                
        //     }

        //     if(45 < run_time  && run_time < 55){

        //         msg_1.linear.x = 0.9;
        //         msg_1.angular.z = -0.2;    

        //     }

        //     if(55 < run_time  ){

        //         msg_1.linear.x = 0.9;
        //         msg_1.angular.z = 0;
                
        //     }

            // if(14 < run_time  && run_time <17){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0.15;
               

            // }

            // if(17 < run_time  && run_time <20){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = -0.15;
                
            // }


            // if(20 < run_time  ){

            //     msg_1.linear.x = 0.9;
            //     msg_1.angular.z = 0;
                
            // }

        //     leader_vel_pub.publish(msg_1);

            
        // }

        
        
        // if((sqrt(pow(A,2) + pow(B,2)) < 0.2) && (abs(theta) <=0.5) ){
        // if((sqrt(pow(A,2) + pow(B,2)) < 0.2)  ){

           
            // geometry_msgs::Twist msg_1;

            // if(  1 < run_time  && run_time < 6){

            //     msg_1.linear.x = 0.0;
            //     msg_1.angular.z = 0;

            // }

            // if(  15 < run_time ){

            //     msg_1.linear.x = 0.4;
            //     msg_1.angular.z = 0;

            // }


            // if(  6 < run_time  && run_time < 18){

            //     msg_1.linear.x = 0.2;
            //     msg_1.angular.z = 0.1;

            // }


            // if(  18 < run_time  && run_time < 30){

            //     msg_1.linear.x = 0.2;
            //     msg_1.angular.z = -0.1;

            // }

            // if(  30 < run_time  && run_time < 40){

            //     msg_1.linear.x = 0.2;
            //     msg_1.angular.z = 0.1;

            // }

            // if(  40 < run_time  && run_time < 50){

            //     msg_1.linear.x = 0.2;
            //     msg_1.angular.z = -0.1;

            // }

            // if(  50 < run_time  && run_time < 70){

            //     msg_1.linear.x = 0.2;
            //     msg_1.angular.z = 0;
            // }

            // leader_vel_pub.publish(msg_1);

        // }

        // 按照设定的频率休眠
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}

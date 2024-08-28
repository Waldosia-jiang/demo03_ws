/*
    需求: 
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    服务器实现:
        1.包含头文件
        2.初始化 ROS 节点
        3.创建 ROS 句柄
        4.创建 客户端 对象
        5.请求服务，接收响应

    实现参数的动态提交
        1.格式 rosrun xxxx  xxxx 12 34
        2.节点执行时，需要动态获取命令中的参数，并组织进 request

*/
// 1.包含头文件
#include "ros/ros.h"
#include "ros_02_plumbing_server_client/Service1.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");

    // 调用时动态传值,如果通过 launch 的 args 传参，需要传递的参数个数 +3
    if (argc != 3)
    // if (argc != 5)//launch 传参(0-文件路径 1传入的参数 2传入的参数 3节点名称 4日志路径)
    {
        ROS_ERROR("请提交两个整数");
        return 1;
    }

    // 2.初始化 ROS 节点
    ros::init(argc,argv,"AddInts_Client");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建 客户端 对象
    ros::ServiceClient client = nh.serviceClient<ros_02_plumbing_server_client::Service1>("AddInts");

    // 问题：如果先启动客户端，回报异常
    // 需求：如果先启动客户端，不要直接抛出异常，而是挂起等待服务端启动
    // 解决：ros内置了相关函数，这些函数可以让客户端启动后挂起，等待服务器的启动

    //等待服务启动成功
    //方式1
    ros::service::waitForService("AddInts");
    //方式2
    // client.waitForExistence();

    // 5.组织请求数据
    ros_02_plumbing_server_client::Service1 ai;
    // ai.request.num1 = 100;
    // ai.request.num2 = 200;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);

    // 6.发送请求,返回 bool 值，标记是否成功
    bool flag = client.call(ai);
    // 7.处理响应
    if (flag){
        ROS_INFO("请求正常处理,响应结果:%d",ai.response.sum);
    }
    else{
        ROS_ERROR("请求处理失败....");
        return 1;
    }

    return 0;
}
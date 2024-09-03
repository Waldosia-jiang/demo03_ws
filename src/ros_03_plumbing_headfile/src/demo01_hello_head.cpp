#include "ros/ros.h"
// #include "ros_03_plumbing_headfile/hello.h"

// /*
// 需求:设计头文件，可执行文件本身作为源文件。

// 流程:
// 1.编写头文件；
// 2.编写可执行文件(同时也是源文件)；
// 3.编辑配置文件并执行。
// */

// //类似于函数的定义
// namespace hello_ns {

// void HelloPub::run(){
//     ROS_INFO("自定义头文件的使用....");
//  }
// }

int main(int argc, char *argv[]){

    setlocale(LC_ALL,"");
    // ros::init(argc,argv,"test_head_node");
    // //函数的调用
    // hello_ns::HelloPub helloPub;
    // helloPub.run();
    return 0;
}
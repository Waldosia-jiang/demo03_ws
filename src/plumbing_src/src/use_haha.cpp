#include "plumbing_src/haha.h"
#include "ros/ros.h"

int main(int argc, char *argv[]){

    setlocale(LC_ALL,"");
    ros::init(argc,argv,"hahah");
    hello_ns::My my;
    my.run();
    return 0;
}
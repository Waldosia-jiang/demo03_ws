/*
    参数服务器操作之查询_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作
    ros::NodeHandle

        param(键,默认值) 
            存在，返回对应结果，否则返回默认值

        getParam(键,存储结果的变量)
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamCached键,存储结果的变量)--提高变量获取效率
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamNames(std::vector<std::string>)
            获取所有的键,并存储在参数 vector 中 

        hasParam(键)
            是否包含某个键，存在返回 true，否则返回 false

        searchParam(参数1，参数2)
            搜索键，参数1是被搜索的键，参数2存储搜索结果的变量

    ros::param ----- 与 NodeHandle 类似
*/
#include "ros/ros.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"get_param");

    //NodeHandle--------------------------------------------------------
    ros::NodeHandle nh;
    ROS_INFO("-------param 函数----------");
    //1.param 函数
    int res1 = nh.param("nh_int",100); // 键存在(第二个参数是查询不存在的情况的默认参数)
    int res2 = nh.param("nh_int2",100); // 键不存在
    ROS_INFO("param获取结果:%d,%d",res1,res2);
    
    ROS_INFO("-------getParam 函数----------");
    //2.getParam 函数
    double radius2=0.0;
    bool result=nh.getParam("radius",radius2);
    if(result){
        ROS_INFO("获取到的半径: %.2f",radius2);
    } else{
        ROS_INFO("查询参数不存在");
    }

    bool result1=nh.getParam("radiusXX",radius2);
    if(result1){
        ROS_INFO("获取到的半径: %.2f",radius2);
    } else{
        ROS_INFO("查询参数不存在");
    }
    
    ROS_INFO("-------getParamCached 函数----------");
    //3.getParamCached 函数
    double radius3=0.0;
    bool result2=nh.getParamCached("radius",radius3);
    if(result2){
        ROS_INFO("获取到的半径: %.2f",radius3);
    } else{
        ROS_INFO("查询参数不存在");
    }

    bool result3=nh.getParamCached("radiusXX",radius2);
    if(result3){
        ROS_INFO("获取到的半径: %.2f",radius2);
    } else{
        ROS_INFO("查询参数不存在");
    }

    ROS_INFO("-------getParamNames 函数----------");
    //4.getParamNames 函数
    std::vector<std::string> names;
    nh.getParamNames(names);
    for(int i=0;i< names.size();i++){
        ROS_INFO("遍历到的字符串:%s",names[i].c_str());
    }
    
    ROS_INFO("-------hasParam(键) 函数----------");
    //5.hasParam(键) 函数
    bool flag1=nh.hasParam("radius");
    bool flag2=nh.hasParam("radiusXXX");
    ROS_INFO("radius存在吗:=  %d",flag1);
    ROS_INFO("radiusXXX存在吗:= %d",flag2);
    
    ROS_INFO("-------searchParam(键) 函数----------");
    //6.searchParam(键) 函数
    std::string key;
    nh.searchParam("radius",key);
    ROS_INFO("搜索到的结果为:= %s",key.c_str());

    //ros::param ---------------------------------
    ROS_INFO("-------param 函数----------");
    //1.param 函数
    int res3 = ros::param::param("param_int",20); //存在
    int res4 = ros::param::param("param_int2",20); // 不存在返回默认
    ROS_INFO("param获取结果:%d,%d",res3,res4);
    
    ROS_INFO("-------getParam 函数----------");
    //2.getParam 函数
    int param_int_value;
    double param_double_value;
    bool param_bool_value;
    std::string param_string_value;
    std::vector<std::string> param_stus;
    std::map<std::string, std::string> param_friends;

    ros::param::get("param_int",param_int_value);
    ros::param::get("param_double",param_double_value);
    ros::param::get("param_bool",param_bool_value);
    ros::param::get("param_string",param_string_value);
    ros::param::get("param_vector",param_stus);
    ros::param::get("param_map",param_friends);

    ROS_INFO("getParam获取的结果:%d,%.2f,%s,%d",
            param_int_value,
            param_double_value,
            param_string_value.c_str(),
            param_bool_value
            );
    for(int i=0;i< param_stus.size();i++){
        ROS_INFO("遍历到的字符串:%s",param_stus[i].c_str());
    }

    ROS_INFO("-------getParamCached 函数----------");
    //3.getParamCached 函数
    ros::param::getCached("param_int",param_int_value);
    ROS_INFO("通过缓存获取数据:%d",param_int_value);

    ROS_INFO("-------getParamNames 函数----------");
    //4.getParamNames 函数
    std::vector<std::string> param_names2;
    ros::param::getParamNames(param_names2);
    for (int i=0;i < param_names2.size();i++){
        ROS_INFO("名称解析name = %s",param_names2[i].c_str());        
    }
    
    ROS_INFO("-------hasParam(键) 函数----------");
    //5.hasParam(键) 函数
    ROS_INFO("存在 param_int 吗? %d",ros::param::has("param_int"));
    ROS_INFO("存在 param_intttt 吗? %d",ros::param::has("param_intttt"));
    
    ROS_INFO("-------searchParam(键) 函数----------");
    //6.searchParam(键) 函数
    std::string key1;
    ros::param::search("param_int",key1);
    ROS_INFO("搜索键:%s",key1.c_str());

    return 0;
}
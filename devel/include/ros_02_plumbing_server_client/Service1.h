// Generated by gencpp from file ros_02_plumbing_server_client/Service1.msg
// DO NOT EDIT!


#ifndef ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1_H
#define ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1_H

#include <ros/service_traits.h>


#include <ros_02_plumbing_server_client/Service1Request.h>
#include <ros_02_plumbing_server_client/Service1Response.h>


namespace ros_02_plumbing_server_client
{

struct Service1
{

typedef Service1Request Request;
typedef Service1Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Service1
} // namespace ros_02_plumbing_server_client


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_02_plumbing_server_client::Service1 > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::ros_02_plumbing_server_client::Service1&) { return value(); }
};

template<>
struct DataType< ::ros_02_plumbing_server_client::Service1 > {
  static const char* value()
  {
    return "ros_02_plumbing_server_client/Service1";
  }

  static const char* value(const ::ros_02_plumbing_server_client::Service1&) { return value(); }
};


// service_traits::MD5Sum< ::ros_02_plumbing_server_client::Service1Request> should match
// service_traits::MD5Sum< ::ros_02_plumbing_server_client::Service1 >
template<>
struct MD5Sum< ::ros_02_plumbing_server_client::Service1Request>
{
  static const char* value()
  {
    return MD5Sum< ::ros_02_plumbing_server_client::Service1 >::value();
  }
  static const char* value(const ::ros_02_plumbing_server_client::Service1Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_02_plumbing_server_client::Service1Request> should match
// service_traits::DataType< ::ros_02_plumbing_server_client::Service1 >
template<>
struct DataType< ::ros_02_plumbing_server_client::Service1Request>
{
  static const char* value()
  {
    return DataType< ::ros_02_plumbing_server_client::Service1 >::value();
  }
  static const char* value(const ::ros_02_plumbing_server_client::Service1Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_02_plumbing_server_client::Service1Response> should match
// service_traits::MD5Sum< ::ros_02_plumbing_server_client::Service1 >
template<>
struct MD5Sum< ::ros_02_plumbing_server_client::Service1Response>
{
  static const char* value()
  {
    return MD5Sum< ::ros_02_plumbing_server_client::Service1 >::value();
  }
  static const char* value(const ::ros_02_plumbing_server_client::Service1Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_02_plumbing_server_client::Service1Response> should match
// service_traits::DataType< ::ros_02_plumbing_server_client::Service1 >
template<>
struct DataType< ::ros_02_plumbing_server_client::Service1Response>
{
  static const char* value()
  {
    return DataType< ::ros_02_plumbing_server_client::Service1 >::value();
  }
  static const char* value(const ::ros_02_plumbing_server_client::Service1Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1_H

// Generated by gencpp from file ros_02_plumbing_server_client/Service1Response.msg
// DO NOT EDIT!


#ifndef ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1RESPONSE_H
#define ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1RESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_02_plumbing_server_client
{
template <class ContainerAllocator>
struct Service1Response_
{
  typedef Service1Response_<ContainerAllocator> Type;

  Service1Response_()
    : sum(0)  {
    }
  Service1Response_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int32_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> const> ConstPtr;

}; // struct Service1Response_

typedef ::ros_02_plumbing_server_client::Service1Response_<std::allocator<void> > Service1Response;

typedef boost::shared_ptr< ::ros_02_plumbing_server_client::Service1Response > Service1ResponsePtr;
typedef boost::shared_ptr< ::ros_02_plumbing_server_client::Service1Response const> Service1ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator1> & lhs, const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator1> & lhs, const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_02_plumbing_server_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba699c25c9418c0366f3595c0c8e8ec";
  }

  static const char* value(const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba699c25c9418c0ULL;
  static const uint64_t static_value2 = 0x366f3595c0c8e8ecULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_02_plumbing_server_client/Service1Response";
  }

  static const char* value(const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 服务器响应发送的数据\n"
"int32 sum\n"
;
  }

  static const char* value(const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Service1Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_02_plumbing_server_client::Service1Response_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_02_PLUMBING_SERVER_CLIENT_MESSAGE_SERVICE1RESPONSE_H

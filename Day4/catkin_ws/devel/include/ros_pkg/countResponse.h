// Generated by gencpp from file ros_pkg/countResponse.msg
// DO NOT EDIT!


#ifndef ROS_PKG_MESSAGE_COUNTRESPONSE_H
#define ROS_PKG_MESSAGE_COUNTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_pkg
{
template <class ContainerAllocator>
struct countResponse_
{
  typedef countResponse_<ContainerAllocator> Type;

  countResponse_()
    : count(0)  {
    }
  countResponse_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef int32_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::ros_pkg::countResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_pkg::countResponse_<ContainerAllocator> const> ConstPtr;

}; // struct countResponse_

typedef ::ros_pkg::countResponse_<std::allocator<void> > countResponse;

typedef boost::shared_ptr< ::ros_pkg::countResponse > countResponsePtr;
typedef boost::shared_ptr< ::ros_pkg::countResponse const> countResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_pkg::countResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_pkg::countResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_pkg::countResponse_<ContainerAllocator1> & lhs, const ::ros_pkg::countResponse_<ContainerAllocator2> & rhs)
{
  return lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_pkg::countResponse_<ContainerAllocator1> & lhs, const ::ros_pkg::countResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_pkg::countResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_pkg::countResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_pkg::countResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_pkg::countResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_pkg::countResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_pkg::countResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_pkg::countResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "602d642babe509c7c59f497c23e716a9";
  }

  static const char* value(const ::ros_pkg::countResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x602d642babe509c7ULL;
  static const uint64_t static_value2 = 0xc59f497c23e716a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_pkg::countResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_pkg/countResponse";
  }

  static const char* value(const ::ros_pkg::countResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_pkg::countResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 count\n"
"\n"
;
  }

  static const char* value(const ::ros_pkg::countResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_pkg::countResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct countResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_pkg::countResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_pkg::countResponse_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_PKG_MESSAGE_COUNTRESPONSE_H
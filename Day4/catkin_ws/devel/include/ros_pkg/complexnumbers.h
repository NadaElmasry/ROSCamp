// Generated by gencpp from file ros_pkg/complexnumbers.msg
// DO NOT EDIT!


#ifndef ROS_PKG_MESSAGE_COMPLEXNUMBERS_H
#define ROS_PKG_MESSAGE_COMPLEXNUMBERS_H


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
struct complexnumbers_
{
  typedef complexnumbers_<ContainerAllocator> Type;

  complexnumbers_()
    : real(0.0)
    , imaginary(0.0)  {
    }
  complexnumbers_(const ContainerAllocator& _alloc)
    : real(0.0)
    , imaginary(0.0)  {
  (void)_alloc;
    }



   typedef float _real_type;
  _real_type real;

   typedef float _imaginary_type;
  _imaginary_type imaginary;





  typedef boost::shared_ptr< ::ros_pkg::complexnumbers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_pkg::complexnumbers_<ContainerAllocator> const> ConstPtr;

}; // struct complexnumbers_

typedef ::ros_pkg::complexnumbers_<std::allocator<void> > complexnumbers;

typedef boost::shared_ptr< ::ros_pkg::complexnumbers > complexnumbersPtr;
typedef boost::shared_ptr< ::ros_pkg::complexnumbers const> complexnumbersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_pkg::complexnumbers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_pkg::complexnumbers_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_pkg::complexnumbers_<ContainerAllocator1> & lhs, const ::ros_pkg::complexnumbers_<ContainerAllocator2> & rhs)
{
  return lhs.real == rhs.real &&
    lhs.imaginary == rhs.imaginary;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_pkg::complexnumbers_<ContainerAllocator1> & lhs, const ::ros_pkg::complexnumbers_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_pkg::complexnumbers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_pkg::complexnumbers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_pkg::complexnumbers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_pkg::complexnumbers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_pkg::complexnumbers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_pkg::complexnumbers_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_pkg::complexnumbers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54da470dccf15d60bd273ab751e1c0a1";
  }

  static const char* value(const ::ros_pkg::complexnumbers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54da470dccf15d60ULL;
  static const uint64_t static_value2 = 0xbd273ab751e1c0a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_pkg::complexnumbers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_pkg/complexnumbers";
  }

  static const char* value(const ::ros_pkg::complexnumbers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_pkg::complexnumbers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 real\n"
"float32 imaginary\n"
"\n"
;
  }

  static const char* value(const ::ros_pkg::complexnumbers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_pkg::complexnumbers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.real);
      stream.next(m.imaginary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct complexnumbers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_pkg::complexnumbers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_pkg::complexnumbers_<ContainerAllocator>& v)
  {
    s << indent << "real: ";
    Printer<float>::stream(s, indent + "  ", v.real);
    s << indent << "imaginary: ";
    Printer<float>::stream(s, indent + "  ", v.imaginary);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_PKG_MESSAGE_COMPLEXNUMBERS_H

#include "ros/ros.h"

int main(int argc, char **argv) {
  ros::init(argc,argv,"HelloROS");
  ros::NodeHandle nh;
  ros::Rate loop_rate(2);

  while(ros::ok())
  {
    ROS_INFO("I'm software robotics engineer, and now learning ROS");
  }

  return 0;
}

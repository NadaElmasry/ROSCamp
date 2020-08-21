#include "ros/ros.h"
#include "std_msgs/Int32.h"

void countCallback(const std_msgs::Int32::ConstPtr& msg){
ROS_INFO("%d",msg->data);
}
int main(int argc, char **argv){
ros::init(argc , argv, "listener_node");
ros::NodeHandle node;
ros::Subscriber sub=node.subscribe("count",1000,countCallback);
ros::spin();
return 0;
}

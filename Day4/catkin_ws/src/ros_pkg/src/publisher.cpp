#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <sstream>

int main(int argc, char **argv){
ros::init(argc, argv, "talker_node");
ros::NodeHandle nh;
ros::Publisher count_publisher = nh.advertise<std_msgs::Int32>("count",1000);
ros::Rate loop_rate(10);
int i=0;
while(ros::ok()){
std_msgs::Int32 msg;
msg.data = i;
ROS_INFO("%d",msg.data);
count_publisher.publish(msg);
ros::spinOnce();
loop_rate.sleep();
i++;
}
return 0;
}

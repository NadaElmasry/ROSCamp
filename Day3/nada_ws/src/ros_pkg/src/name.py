#! /usr/bin/env python
import rospy

rospy.init_node("HelloROS")
rate = rospy.Rate(2)
while not rospy.is_shutdown():
    print "I'm software robotics engineer, and now learning ROS"
    rate.sleep()

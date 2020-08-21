#!/usr/bin/env python
import rospy 
from ros_pkg.msg import complexnumbers

def callback(number):
	rospy.loginfo('complex number %.2f + %.2f i',number.real,number.imaginary)
def listener():
	rospy.init_node('complex_node2',anonymous=True)
	rospy.Subscriber('complex',complexnumbers,callback)
	rospy.spin()

if __name__ == '__main__':
	listener()

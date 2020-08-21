#!/usr/bin/env python
import rospy
from ros_pkg.msg import complexnumbers
import random

def talker():
	pub = rospy.Publisher('complex',complexnumbers,queue_size=10)
	rospy.init_node('complex_node',anonymous=True)
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		number = complexnumbers()
		number.real = random.random()
		number.imaginary = random.random()
		rospy.loginfo(number)
		pub.publish(number)
		rate.sleep()
if __name__ == '__main__':
	try:
		talker()
	except rospy.ROSInterruptException:
		pass

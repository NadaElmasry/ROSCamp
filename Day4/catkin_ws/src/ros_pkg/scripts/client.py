#!/usr/bin/env python
import sys
import rospy
from ros_pkg.srv import count
from ros_pkg.srv import countRequest
from ros_pkg.srv import countResponse

def count_words_client(x):
	rospy.wait_for_service('count_words')
	try:
		count_words = rospy.ServiceProxy('count_words',count)
		cwords = count_words(x)
		return cwords.count
	except rospy.ServiceException, e:
		print "Service call failed"%e

if __name__ == '__main__':
	while not rospy.is_shutdown():
		string = raw_input('Enter a string please: ')
		print('the number of words in sting %s is %d'%(string,
		count_words_client(string)))

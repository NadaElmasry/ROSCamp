#!/usr/bin/env python
import rospy
from ros_pkg.srv import count
from ros_pkg.srv import countRequest
from ros_pkg.srv import countResponse



def count_words_handle(req):
	sentence = req.x
	print('number of words = '+ str(len(req.x.split())))
	return len(req.x.split())
def count_words_server():
	rospy.init_node('count_words_server')
	ser = rospy.Service('count_words',count,count_words_handle)
	rospy.spin()

if __name__ == '__main__':
	count_words_server()

#!/bin/sh

gnome-terminal -e roscore
#gnome-terminal -e "roslaunch webcam pub.launch"
#gnome-terminal -e "rosparam set /uvc_camera/device /dev/video1 & rosrun uvc_camera uvc_camera_node"
gnome-terminal -e "rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.024 image:=/image_raw"

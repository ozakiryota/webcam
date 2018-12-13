#!/bin/sh

gnome-terminal -e roscore
cd /tmp
mkdir -p ~/Desktop/temp
mv calibrationdata.tar.gz ~/Desktop/temp/
cd ~/Desktop/temp
tar -xvzf calibrationdata.tar.gz
mv ost.txt ost.ini
gnome-terminal -e rosrun camera_calibration_parsers convert ost.ini camera.yaml
mv camera.yaml ~/Desktop

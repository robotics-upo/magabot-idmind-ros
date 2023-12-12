#!/bin/bash

echo "Installing necessary packages for practice"

sudo apt install ros-noetic-costmap-2d ros-noetic-amcl ros-noetic-map-server ros-noetic-urg-node

echo "Downloading RPLidar drivers into catkin_ws"
cd
mkdir -p caktin_ws/src
cd catkin_ws/src
git clone https://github.com/Slamtec/rplidar_ros.git

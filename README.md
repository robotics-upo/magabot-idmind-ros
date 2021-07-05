magabot-idmind-ros
==================

Arduino code and ROS packages for the IdMind Magabot robot.

FOLDERS

Magabot_SerialControl -> Arduino sketches for interfacing with the robot hardware.

magabot -> Arduino library for "Magabot_SerialControl.ino".

src -> magabot and cereal_port ROS packages (for a catkin style workspace).

# Installation

This guide details the steps to correctly configure a Magabot robot under a Linux system with ROS:

1. Install ROS and create_a_workspace.
    
2. Download the idmind magabot driver into the src folder of the workspace:
    
`$ git clone https://github.com/robotics-upo/magabot-idmind-ros`

`$ cd ..`

`$ catkin_make`

3. Add additional ROS stuff (replace <distro> to your distro)
    
       $ sudo apt-install ros-<distro>-joy ros-<distro>-urg-node
       
4. Add user to “dialout” group in order to be able to open the Hokuyo laser port:
    
       $ sudo adduser <user> dialout
       
5. Reboot the system
    
6. Now you can launch the “magabot.launch” which will launch the laser, the driver, the joystick and the IMU. With a joystick enabled the user can now teleoperate the robot with the aid of a joystick 
    
       $ roslaunch magabot magabot.launch

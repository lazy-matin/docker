
####### Setup sources.list 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

####### Installation 
## update apt package index
sudo apt update -y 

## install melodic desktop
sudo apt install -y ros-melodic-desktop-full

## You can choice other packages
## Desktop Install: ROS, rqt, rviz, and robot-generic libraries
#> sudo apt install ros-melodic-desktop
## ROS package, build, and communication libraries. Excepted GUI tools
#> sudo apt install ros-melodic-ros-base


###############################################################################################################

####### Environment setup

### It's convenient if the ROS environment variables are automatically added to your bash session every time a new shell is launched:
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

## If you just want to change the enviroment of your current sell, Instead of the above you can type;
#> source /opt/ros/melodic/setup.bash

## If you use zsh instead of bash you need to run the following commands to set up your shell:
#> echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
#> source ~/.zshrc


###############################################################################################################

####### Dependencies for building packages 

## To install this tool and other dependencies for building ROS packages, run:
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

####### Initialize rosdep
sudo apt install -y python-rosdep

## With the following, you can initialize rosdep.
sudo rosdep init
rosdep update
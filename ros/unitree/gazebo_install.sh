

sudo apt -y update
sudo apt -y install lsb-release wget gnupg

####### Setup sources.list 
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

####### Installation 
## update apt package index
sudo apt update -y 

## install melodic desktop
sudo apt-get install -y ignition-citadel


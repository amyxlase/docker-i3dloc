# How to use

1) Install docker.
2) Run `sudo ./build.sh'` to build the docker image. This will take a while the first time it is built. Future builds will be quick since the layers will be cached.
3) Run `sudo ./run.sh` to start the docker image. 
4) Run `sudo ./configure.sh` to perform various configuration tasks to the project such as setting environment variables and generating makefiles.

# Please note

1) I have not tested that every script runs to completion, I am not quite sure how to access the test/train ros bags.
2) The fully built docker image is very large since it installs every single dependency needed (even ROS, build essentials, numpy, etc.). Need to look into optimizations such as multi-stage building.

#need to add catkin_pkg,cryptodomex, rospkg
#sudo apt-get install ros-melodic-jsk-recognition-msgs & sudo apt-get install ros-melodic-jsk-rviz-plugins
s



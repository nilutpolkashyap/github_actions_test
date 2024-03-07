FROM osrf/ros:humble-desktop

SHELL ["/bin/bash", "-c"]

RUN apt-get update
#RUN apt install python-setuptools -y
### Required to install python packages
RUN apt-get install python3 python3-pip -y
# Install system packages

COPY . /ros2_ws
WORKDIR /ros2_ws

# RUN bash test.sh
RUN . /opt/ros/humble/setup.bash && colcon build 
    # Clone or copy your ROS 2 packages into the workspace
    # git clone <your_repo_url> src && \
    # Build the ROS 2 packages
    
    # Source the setup.bash for the installed packages
    # . install/setup.bash && \
    # Run tests
    # colcon test
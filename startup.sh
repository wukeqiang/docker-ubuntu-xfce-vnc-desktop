#!/bin/bash

# prepare ssh server
mkdir -p /var/run/sshd

# start up supervisord, all daemons should launched by supervisord.
/usr/bin/supervisord -c /root/supervisord.conf

# copy terminal to depsktop
mkdir -p /root/Desktop/
cp -f /usr/share/applications/xfce4-terminal.desktop /root/Desktop/xfce4-terminal.desktop

# source ros
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

# start a shell
/bin/bash

#!/bin/bash

# prepare ssh server
mkdir -p /var/run/sshd

# start up supervisord, all daemons should launched by supervisord.
/usr/bin/supervisord -c /root/supervisord.conf

# copy terminal to depsktop
mkdir -p /root/Desktop/
cp -f /usr/share/applications/xfce4-terminal.desktop /root/Desktop/xfce4-terminal.desktop
chmod +x /root/Desktop/xfce4-terminal.desktop
echo 2 | update-alternatives --config x-terminal-emulator >> /dev/null 2>&1

# print
echo "Now you can use vnc viewer to connect the container ^_^"

# start a shell
/bin/bash

FROM ubuntu:14.04

MAINTAINER Chen Wang<mr_cwang@foxmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim \
		xfce4 xfce4-goodies \
		x11vnc xvfb \
		firefox \
		git \
		pwgen \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 4B63CF8FDE49746E98FA01DDAD19BAB3CBF125EA \
	&& sh -c 'echo "deb http://snapshots.ros.org/indigo/final/ubuntu $(lsb_release -sc) main" >> /etc/apt/sources.list.d/ros-snapshots.list' \
	&& apt-get update

WORKDIR /root

RUN apt-get install -y ros-indigo-desktop-full python-rosinstall \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN /bin/bash -c "echo 'source /opt/ros/indigo/setup.bash' >> ~/.bashrc"

ADD startup.sh ./
ADD supervisord.conf ./

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]

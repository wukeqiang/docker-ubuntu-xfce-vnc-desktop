FROM ubuntu:12.04

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim-tiny \
		xfce4 xfce4-goodies \
		x11vnc xvfb \
		firefox \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 4B63CF8FDE49746E98FA01DDAD19BAB3CBF125EA \
	&& sh -c 'echo "deb http://snapshots.ros.org/fuerte/final/ubuntu $(lsb_release -sc) main" >> /etc/apt/sources.list.d/ros-snapshots.list' \
	&& apt-get update

WORKDIR /root

ADD Cg-3.1_April2012_x86_64.deb ./
RUN dpkg -i ./Cg-3.1_April2012_x86_64.deb && rm -rf ./Cg-3.1_April2012_x86_64.deb
RUN apt-get install -y ros-fuerte-desktop-full \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

ADD startup.sh ./
ADD supervisord.conf ./

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
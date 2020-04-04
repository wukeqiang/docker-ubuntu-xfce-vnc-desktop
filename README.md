ros-vnc
=========================

### Pull from dockerhub

```
$ docker pull optsolution/ros-vnc:indigo
```


### Build yourself

```
$ git clone -b ros-indigo https://github.com/OptSolution/docker-ubuntu-xfce-vnc-desktop.git
$ docker build --rm -t optsolution/ros-vnc:indigo docker-ubuntu-xfce-vnc-desktop
```

### Run

```
$ docker run -i -t -p 5900:5900 optsolution/ros-vnc:indigo
```

Then open vnc viewer and input `<YOUR IP>:5900`, and you can use the desktop by vnc. If you run the image on your own pc, you can only input `:5900` in vnc viewer.


Trobleshooting
==================
You can find logs under /var/log/ in container.


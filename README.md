ros-vnc
=========================

### Pull from dockerhub

```
$ docker pull optsolution/ros-vnc:fuerte
```


### Build yourself

```
$ git clone -b ros-fuerte https://github.com/OptSolution/docker-ubuntu-xfce-vnc-desktop.git
$ docker build --rm -t optsolution/ros-vnc:fuerte docker-ubuntu-xfce-vnc-desktop
```

### Run

```
$ docker run -i -t -p 5900:5900 optsolution/ros-vnc:fuerte
```

Then open vnc viewer and input `<YOUR IP>:5900`, and you can use the desktop by vnc. If you run the image on your own pc, you can only input `:5900` in vnc viewer.


Trobleshooting
==================
You can find logs under /var/log/ in container.


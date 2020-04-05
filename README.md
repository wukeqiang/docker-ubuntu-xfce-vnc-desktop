ros-vnc
=========================

### Pull from dockerhub

```
$ docker pull optsolution/ros-vnc:[tagname]
```


### Build yourself

```
$ git clone -b ros-[tagname] https://github.com/OptSolution/docker-ubuntu-xfce-vnc-desktop.git
$ docker build --rm -t optsolution/ros-vnc:[tagname] docker-ubuntu-xfce-vnc-desktop
```

### Run

```
$ docker run -i -t -p 5900:5900 optsolution/ros-vnc:[tagname]
```

set resolution, e.g.
```
$ docker run -i -t -p 5900:5900 -e RESOLUTION=1920x1080 optsolution/ros-vnc:[tagname]
```


Then open vnc viewer and input `<YOUR IP>:5900`, and you can use the desktop by vnc. If you run the image on your own pc, you can only input `:5900` in vnc viewer.


Trobleshooting
==================
You can find logs under /var/log/ in container.


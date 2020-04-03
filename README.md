docker-ubuntu-xfce-vnc-desktop
=========================

### Build yourself

```
$ git clone https://github.com/OptSolution/docker-ubuntu-xfce-vnc-desktop.git
$ docker build --rm -t [iamge_name] docker-ubuntu-xfce-vnc-desktop
```

### Run

```
$ docker run -i -t -p 5900:5900 [image_name]
```

Use vnc viewer to <YOUR IP>:5900


Trobleshooting
==================
You can find logs under /var/log/ in container.


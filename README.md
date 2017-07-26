# build emacs for centos7

## build emacs

In order to workardound following issue -

  https://github.com/moby/moby/issues/22801


it is necessary to disable randomize_va_space like below:


```
$ sudo sh -c "echo 0 > /proc/sys/kernel/randomize_va_space"
$ docker build -t kino/emacs .
$ sudo sh -c "echo 2 > /proc/sys/kernel/randomize_va_space"
$ docker push kino/emacs
```

## copy files to host

Following command will copy emacs files to /usr/local/docker/emacs/ on the host.

```
$ docker run -v /usr/local/docker:/usr/local/docker-host --rm kino/emacs
```

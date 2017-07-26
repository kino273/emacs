# build emacs for centos7

In order to workardound following issue -

  https://github.com/moby/moby/issues/22801



Workaround to locally build:

```
$ sudo sh -c "echo 0 > /proc/sys/kernel/randomize_va_space"
$ docker build -t kino/emacs .
$ sudo sh -c "echo 2 > /proc/sys/kernel/randomize_va_space"
$ docker push kino/emacs
```


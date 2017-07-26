#!/bin/sh
mkdir -p /usr/local/docker
touch /usr/local/docker/ttt.devcopy.timestamp
ls -lR /usr/local/docker/
cp -R /usr/local/docker/* /usr/local/docker-host/

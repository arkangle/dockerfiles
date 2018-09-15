#!/bin/sh
CONTAINER=$1
SIGNAL=SIGHUP
/usr/bin/curl -X POST -s --unix-socket /var/run/docker.sock "http://localhost/containers/$CONTAINER/kill?signal=$SIGNAL"

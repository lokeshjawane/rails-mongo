#!/bin/bash

if [ -f /tmp/app.pid ]; then
kill -9 `cat /tmp/app.pid`
else
echo "pid file doesn't exist"
fi

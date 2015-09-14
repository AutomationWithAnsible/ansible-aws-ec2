#!/bin/bash

ps aux | grep "moto_server {{service}}"
if [ $? -eq 0 ]; then 
    kill -9 `pgrep -f  moto_server`
    moto_server "{{service}}" &
    echo "RUN"
else
    echo "RUN"
fi


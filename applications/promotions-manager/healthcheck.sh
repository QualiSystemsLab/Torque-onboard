#!/bin/bash

ip=$1
port=80
hostname=${ip}:${port}

for (( ; ; ))
do
    sleep 1
    if [[ $(wget -S -T1 -t1 http://${hostname}/ 2>&1 | grep "HTTP/1" | awk '{print $2}') == "200" ]] ; then
        echo 'connected to' ${hostname}
        exit 0
    else
        echo 'cannot connect to' ${hostname}
    fi
done
exit 1
© 2021 GitHub, Inc.
Terms
Privacy
Securit

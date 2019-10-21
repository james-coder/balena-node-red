#!/bin/bash

echo "RTL-AMR Running!"
/usr/local/bin/rtl_tcp &
sleep 4
/home/aptly/go/bin/rtlamr -msgtype=scm -format=json -agcmode=true | /usr/src/app/process_power_usage.pl &
sleep infinity

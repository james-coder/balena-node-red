#!/bin/bash

export PERL5LIB=/usr/src/app/perl_modules

echo "RTL-AMR Running!"
/usr/bin/rtl_tcp &
sleep 4
/home/aptly/go/bin/rtlamr -msgtype=scm -format=json -agcmode=true | /usr/src/app/process_power_usage.pl &
sleep infinity

#!/bin/bash

# Start Xvfb
Xvfb -ac -screen scrn 1280x2000x24 :9.0 &
export DISPLAY=:9.0

# Make the default flows available in the user library
mkdir -p /data/node-red/user/lib/flows || true
cp /usr/src/app/flows/* /data/node-red/user/lib/flows/

# Start app
DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket node-red --settings /usr/src/app/settings.js

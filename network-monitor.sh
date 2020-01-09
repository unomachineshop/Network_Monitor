#!/bin/bash

LOGFILE="/home/pi/Network_Monitor/network-monitor.log"

# Server to ping
SERVER=8.8.8.8

# Send 2 pings
ping -c2 ${SERVER} > /dev/null

# Connected to internet
if [ $? == 0 ]
then
        echo "$(date "+%m %d %Y %T") : Ethernet OK" >> $LOGFILE

# Not connected to internet
else
	echo "$(date "+%m %d %Y %T") : Attempting network reset..." >> $LOGFILE
	
	# Restart the wireless interface
	ifdown --force eth0
	ifup eth0
fi

#!/bin/bash

DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
echo "Current disk usage: ${DISK_USAGE}%"

if [ $DISK_USAGE -gt 90 ]; then
	echo "CRITICAL: Disk almost full"
elif [ $DISK_USAGE -gt 75 ]; then
	echo "WARNING: Disk getting full"
else
	echo "OK: Disk usage is fine"
fi

#!/bin/bash

check_disk() { 
	USAGE=$(df $1 | tail -1 | awk '{print $5}' | sed 's/%//')
	echo "Disk usage for $1: ${USAGE}%"

	if [ $USAGE -gt 80 ]; then
		echo "WARNING: $1 is above 80%"
		return 1 
	fi
	return 0
}

log() {
	TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
	echo "[$TIMESTAMP] $1" | tee -a ../tmp/myapp.log
}

greet_environment() {
	ENV=$1
	SERVER=$2
	echo "Connecting to $SERVER in $ENV environment"
}

log "Script started"
check_disk /
check_disk /tmp
greet_environment "production" "web-server-01"
log "Script finished"

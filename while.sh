#!/bin/bash

#COUNT=1
#while [ $COUNT -le 5 ]; do
#	echo "Count is: $COUNT"
#	COUNT=$((COUNT + 1))
#done

MAX_ATTEMPTS=10
ATTEMPT=1
while [ $ATTEMPT -le $MAX_ATTEMPTS ]; do
	echo "Checking if service is up - attempts $ATTEMPT"
	
	if systemctl is-active --quiet nginx; then
		echo "Service is up"
		break  # exits the loop
	fi

	echo "Not up yet, waiting 5 seconds"
	sleep 5
	ATTEMPT=$((ATTEMPT + 1))
done

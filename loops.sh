#!/bin/bash

for SERVER in web-01 web-02 web-03 db01; do
	echo "Checking server: $SERVER"
done

for i in {1..5}; do
	echo "Iteration $i"
done

for FILE in ../etc/*.conf; do
	echo "Config file found: $FILE"
done

for USER in $(cat ../etc/passwd | cut -d: -f1); do
	echo "User exists: $USER"
done
# currently theres no passwd folder so nothing will return


#!/bin/bash

set -eu

copy_file() {
	SOURCE=$1
	DEST=$2
	
	if cp "$SOURCE" "$DEST"; then
		echo "Successfully copied $SOURCE to $DEST"
	else 
		echo "ERROR: Failed to copy $SOURCE to $DEST"
		exit 1
	fi
}

if ! command -v nginx &> /dev/null; then
	echo "nginx is not installed"
	exit 1
fi

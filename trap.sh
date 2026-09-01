#!/bin/bash

TEMP_FILE=$(mktemp)

cleanup() {
	echo "Script finished, cleaning up"
	rm -f "$TEMP_FILE"
}

trap cleanup EXIT

echo "Working with temp file: $TEMP_FILE"
echo "some data" > "$TEMP_FILE"
cat "$TEMP_FILE"

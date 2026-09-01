#!/bin/bash

if [ -z "$ENV" ]; then
	echo "Environment not set"
fi

if [ -f "../etc/passwwd" ]; then
	echo "passwd file exists"
fi

if [ -d "../tmp" ]; then
	echo "tmp directory exsists"
fi

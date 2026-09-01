#!bin/bash

echo "Script name: $0"
echo "First argument passed: $1"
echo "Second argument passed: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo "Process ID of this script: $$"

ls /dandalo
echo "Exit code of last command: $?"

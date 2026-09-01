NAME="Mata Kapara"
AGE=20
SERVER="web_server_01"

echo "Name: $NAME"
echo "Age: $AGE"
echo "Server: $SERVER"

echo "Backing up ${SERVER}_config"

CURRENT_DATE=$(date)
CURRENT_USER=$(whoami)
DISK_USAGE=$(df -h / | tail -l)

echo "Date: $CURRENT_DATE"
echo "User: $CURRENT_USER"
echo "Disk: $DISK_USAGE"

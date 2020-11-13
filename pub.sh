#!/bin/bash


host="localhost"
port=1883
topic="master/default"
message="default-message"
user="default-user"
pass="default-pass"

if [ $# -eq 6 ];
then
    host=$1
    port=$2
    topic=$3
    message=$4
    user=$5
    pass=$6
    echo "✅ Sending: '$message' with $user:$pass to $host:$port/$topic"
    mosquitto_pub -h $host -p $port -t $topic -m "$message" -u $user -P $pass
else
    echo '❌ Invalid syntax use the script like following:'
    echo './pub.sh host port topic "Your message" user password'
fi

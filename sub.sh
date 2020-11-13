#!/bin/bash


host="localhost"
port=1883
topic="master/default"
user="default-user"
pass="default-pass"

if [ $# -eq 5 ];
then
    host=$1
    port=$2
    topic=$3
    user=$4
    pass=$5
    echo "✅ Listening to:  $host:$port/$topic with $user:$pass"
    mosquitto_sub -h $host -p $port -t $topic -u $user -P $pass
else
    echo '❌ Invalid syntax use the script like following:'
    echo './sub.sh host port topic user password'
fi

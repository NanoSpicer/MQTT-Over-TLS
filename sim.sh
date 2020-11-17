#!/bin/bash

# Launch the mosquitto server with local config
./mosquitto.sh 2> .server-output &


# Append & Launch in background
sub_user="sub1"
sub_pass="sub1"
echo "Subscriber $sub_user up and running!"
./sub.sh localhost 1883 master/default $sub_user $sub_pass &

pub_user="pub1"
pub_pass="pub1"
for i in 1 2 3 4 5
do
  ./pub.sh localhost 1883 master/default "Sending message #$i" $pub_user $pub_pass
  sleep 1
done

# Clean leftovers
pkill -f mosquitto mosquitto_pub mosquitto_sub

echo "Done!"

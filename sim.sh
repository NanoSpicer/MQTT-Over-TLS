#!/bin/bash

# Launch the mosquitto server with local config
./mosquitto.sh > .server-output &


# Append & Launch in background
./sub.sh localhost 1883 master/default user1 pass1 &

echo "Subscriber running on PID $pidOfSub"

for i in 1 2 3 4 5
do
  ./pub.sh localhost 1883 master/default "Sending message #$i" user1 pass1
  sleep 1
done

pkill -f mosquitto
pkill -f mosquitto_sub
pkill -f mosquitto_pub

echo "Done!"

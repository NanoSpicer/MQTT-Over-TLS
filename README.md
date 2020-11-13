# MQTT-Over-TLS

Configure a mosquitto server

`pub.sh` script publishes on a topic
`sub.sh` script listens to a topic

```bash
# to publish on a topic
./pub.sh host port topic "Your message" user password
# to listen on a topic
./sub.sh host port topic user password
```

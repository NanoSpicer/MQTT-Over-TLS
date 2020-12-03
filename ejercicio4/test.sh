#!/bin/bash

# Este comando da error
# mosquitto_pub -m "bernat" -t test -u dios -P dios --cafile ./conf/tls/ca/ca.crt --tls-version tlsv1.2

# Este comando va bien porque indicamos los certificados y keys
mosquitto_pub -m "bernat" -t test -u dios -P dios --cafile ./conf/tls/ca/ca.crt --tls-version tlsv1.2 --cert ./conf/tls/client/client.crt --key ./conf/tls/client/client.key
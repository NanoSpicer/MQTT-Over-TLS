#!/bin/bash

mosquitto_pub -m "bernat" -t test -u dios -P dios --cafile ./conf/tls/ca/ca.crt --tls-version tlsv1.2
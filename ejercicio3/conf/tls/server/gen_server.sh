#!/bin/bash

openssl genrsa -out broker.key 2048

openssl req -out broker.csr -key broker.key -new

openssl x509 -req -in server.csr -CA ../ca/ca.crt -CAkey ../ca/ca.key -CAcreateserial -out server.crt -days 365
#!/bin/bash

openssl genrsa -out client.key 2048

openssl req -out client.csr -key client.key -new

openssl x509 -req -in client.csr -CA ../ca/ca.crt -CAkey ../ca/ca.key -CAcreateserial -out client.crt -days 365
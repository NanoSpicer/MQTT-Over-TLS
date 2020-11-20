#!/bin/bash

openssl genrsa -out client.key 2048

openssl req -out client.csr -key client.key -new
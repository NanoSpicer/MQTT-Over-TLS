#!/bin/bash

openssl genrsa -out broker.key 2048

openssl req -out broker.csr -key broker.key -new
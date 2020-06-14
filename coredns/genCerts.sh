#!/usr/bin/env bash

# Link on creating certs
# https://docs.oracle.com/cd/E17952_01/mysql-5.0-en/creating-ssl-files-using-openssl.html

# Generate the CA and create a cert/key pair for the server:
openssl genrsa 2048 > ca-key.pem
openssl req -new -x509 -nodes -days 3600 -key ca-key.pem -out ca.pem
openssl req -newkey rsa:2048 -days 3600 -nodes -keyout key.pem -out server-req.pem
openssl rsa -in key.pem -out key.pem
openssl x509 -req -in server-req.pem -days 3600 -CA ca.pem -CAkey ca-key.pem -set_serial 01 -out cert.pem


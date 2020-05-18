#!/bin/bash -e

####
# Windows Git bash terminal identifies 
# /CN=client as a path and appends the absolute path 
# of parent directory to it
####
HOST_OS=$(uname)
SERVER_SUBJ="/CN=mdop"
if echo "${HOST_OS}" | grep -E "MINGW*" >/dev/null
then
	SERVER_SUBJ="//CN=mdop"
fi

mkdir -p selfsigned/
cd selfsigned/
openssl genrsa -out mdop-cert-key.pem 2048
openssl req -sha256 -new -key mdop-cert-key.pem -out mdop-csr.pem -subj "${SERVER_SUBJ}"
openssl x509 -req -days 365 -in mdop-csr.pem -signkey mdop-cert-key.pem -out mdop-cert.pem

#!/bin/bash

#Simple Zone Transfer Bash Script

if [ -z "$1"];then
    echo "[*] Simple Zone Transfer Script"
    echo "[*] Usage: $0 <domain name> "
fi

for server in $(host -t ns $1| cut -d " " -f4); do
    host -l $1 $server | grep "has address"
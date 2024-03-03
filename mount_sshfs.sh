#!/bin/bash

# run as user1

. bw_lookup.sh theserver

echo "BW_PASS is : ${BW_PASS}"

sshfs user1@192.168.86.10:/data /storage

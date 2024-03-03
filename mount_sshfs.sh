#!/bin/bash

. bw_lookup.sh theserver

sudo sshpass -eBW_PASS sshfs -o allow_other,default_permissions user1@192.168.86.10:/data /storage


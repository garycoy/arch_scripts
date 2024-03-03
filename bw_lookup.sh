#!/bin/bash

# bitwarden CLI password lookup
# uses jq - JSON parser - to parse the bw output

LOOKUP_ITEM=$1

if [[ "XX${LOOKUP_ITEM}XX" == "XXXX" ]];then
   echo "You did not enter a search item."
   exit
fi

export BW_PASS=$(bw list items --search "${LOOKUP_ITEM}" --session ${BW_SESSION} | jq '.[].login.password')

bw lock

#!/bin/bash

# bitwarden CLI (command line) lookup script

LOOKUP_ITEM=$1

if [[ "XX${LOOKUP_ITEM}XX" == "XXXX" ]];then
   echo "You did not enter a search item."
   exit
fi

bw list items --search "${LOOKUP_ITEM}" --session ${BW_SESSION} | jq '.'
#| grep -E -o "username.{0,100}"

bw lock

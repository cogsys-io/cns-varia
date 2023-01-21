#!/bin/bash
if [ "$1" == "" ]; then
  echo "$0: Please provide argument for counter name"
  exit 1
fi

COUNTER=1
while [ $COUNTER -gt 0 ]; do
  echo The counter $1 is $COUNTER
  let COUNTER=COUNTER+1
  sleep 6
done

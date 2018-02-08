#!/bin/bash

export ALGO
export URL
export PORT
export USERNAME
export PASSWORD
export THREAT

ALGO=${ALGO:-scrypt}


if [ -z "$URL" ]; then
  echo "[ERROR] Url for the pool must be set !"
  exit 1
fi

if [ -z "$PORT" ]; then
  echo "[ERROR] Port for the pool must be set !"
  exit 1
fi

if [ -z "$USERNAME" ]; then
  echo "[ERROR] the worker username for the pool must be set !"
  exit 1
fi

if [ -z "$PASSWORD" ]; then
  echo "[ERROR] The worker password for the pool must be set !"
  exit 1
fi

if [ ! -z "$THREAD" ]; then 
  THREADSTRING="-t $THREAD"
else
  THREADSTRING=""
fi

CONFIG=""

echo $THREAD
echo $THREADSTRING

if [ -e /config/config.json ];  then
    nice -10 /usr/local/bin/cpuminer -c /config/config.json
else 
     nice -10 /usr/local/bin/cpuminer -a $ALGO -o $URL:$PORT --userpass=$USERNAME:$PASSWORD $THREADSTRING
fi


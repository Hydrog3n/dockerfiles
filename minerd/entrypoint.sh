#!/bin/bash

export ALGO
export URL
export PORT
export USERNAME
export PASSWORD

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

CONFIG=""

if [ -e /config/config.json ];  then
    /usr/local/bin/minerd -c /config/config.json
else 
     /usr/local/bin/minerd -a $ALGO -o $URL:$PORT -u $USERNAME -p $PASSWORD
fi


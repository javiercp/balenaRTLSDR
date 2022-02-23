#!/usr/bin/env bash
#shellcheck shell=bash

# Define appname (for logging)
APPNAME="start"

# Define loggiing fuction
LIGHTBLUE='\033[1;34m'
NOCOLOR='\033[0m'
function logger() {
    echo -e "${LIGHTBLUE}[$APPNAME] $1${NOCOLOR}"
}

logger "getting IP"
_IP=$(hostname -I) || true

if [[ -z "$_IP" ]]; then
        logger "IP missing, aborting..."
        sleep infinity
fi

logger "My IP address is '$_IP'" 
/usr/local/bin/rtl_tcp -a $_IP &

wait -n
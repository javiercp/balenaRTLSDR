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

logger "Getting IP"
_IP=$(hostname -I) || true

if ["$_IP"]; then
logger "My IP address is %s\n" "$_IP"
/usr/local/bin/rtl_tcp -a $_IP &
fi

wait -n
#!/bin/bash

function die {
    echo "[ERROR] $*" >&2
    exit 1
}

[ "$PROJECTURL" = "" ] && die "Missing mandatory environment variable PROJECTURL"
[ "$ACCOUNTKEY" = "" ] && die "Missing mandatory environment variable ACCOUNTKEY"
[ "$(whoami)" != "boinc" ] && die "Must be running as boinc user"

cd
exec boinc --attach_project $PROJECTURL $ACCOUNTKEY

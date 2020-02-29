#!/bin/bash

# A simple script that will receive events from a RTL433 SDR

# Author: Marco Verleun <marco@marcoach.nl>
# Version 2.0: Adapted for the new output format of rtl_433

# Remove hash on next line for debugging
#set -x

export LANG=C
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

#
# Start the listener and enter an endless loop
#
/usr/local/bin/rtl_433 -R -39 -M level -F "mqtt://mqtt:1883,retain=0,events=rtl_433[/id]"

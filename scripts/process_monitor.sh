#!/bin/sh
# Usage: ./process-usage.sh <PID of the process>
export PID=$1
rm top.dat
while true; do top -p $PID -bn 1 | egrep '^[0-9]+' | awk -v now=$(date +%s) '{print now,$6,$9}' >> top.dat; done
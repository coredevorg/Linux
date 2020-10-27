#!/bin/bash
signal_handler() {
    echo "Received SIGTERM"
    # 
    # shutdown background service
    #
    exit 143
}

sigusr_handler() {
    echo "SIGUSR1"
}

trap "signal_handler" SIGTERM 
trap "sigusr_handler" SIGUSR1

# 
# run service in background
# check pid, ...
#

echo "waiting ..."
while true ; do tail -f /dev/null & wait ${!} ; done
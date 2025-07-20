#!/bin/bash

PIDFILE="/tmp/screenrec.pid"

if [ -f "$PIDFILE" ]; then
  kill -INT $(cat "$PIDFILE") && echo "Recording stopped."
  rm -f "$PIDFILE"
else
  echo "No active recording found."
fi


#!/bin/bash

OUTDIR="$HOME/Videos/screencasts"
mkdir -p "$OUTDIR"
TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
OUTFILE="$OUTDIR/recording_$TIMESTAMP.mkv"

GEOM=$(slop -f "%wx%h+%x,%y") || exit 1
FRAMERATE=30

# Save the PID of ffmpeg
ffmpeg -video_size "${GEOM%%+*}" -framerate $FRAMERATE \
  -f x11grab -i ":0.0+${GEOM##*+}" "$OUTFILE" &
echo $! > /tmp/screenrec.pid
wait $!


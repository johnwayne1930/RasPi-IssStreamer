#!/bin/bash

# keeps the livestream up and running
while true; do
case "$1" in
ch1)
/usr/local/bin/livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_720p --player omxplayer --fifo --player-args "--layer 1000 --win '400 0 800 240' --live {filename}"
;;
ch2)
/usr/local/bin/livestreamer http://ustream.tv/channel/live-iss-stream mobile_480p --player omxplayer --fifo --player-args "--layer 1000 --win '0 240 400 480' --live {filename}"
;;
ch3)
/usr/local/bin/livestreamer http://ustream.tv/channel/nasa-hd-tv mobile_720p --player omxplayer --fifo --player-args "--layer 1000 --win '400 240 800 480' --live {filename}"
;;
esac
done

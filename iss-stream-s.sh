#!/bin/bash

# keeps the livestream up and running
while true; do
case "$1" in
ch1)
# mobile_240p / mobile_360p / mobile_480p / mobile_720p
/usr/local/bin/livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_240p --player omxplayer --fifo --player-args "--win '0 240 400 480' --live {filename}"
;;
ch2)
# mobile_284p / mobile_426p / mobile_480p
/usr/local/bin/livestreamer http://ustream.tv/channel/live-iss-stream mobile_284p --player omxplayer --fifo --player-args "--win '400 240 800 480' --live {filename}"
;;
ch3)
# mobile_240p / mobile_360p / mobile_480p / mobile_720p
/usr/local/bin/livestreamer http://ustream.tv/channel/nasa-hd-tv mobile_240p --player omxplayer --fifo --player-args "--win '400 0 80 240' --live {filename}"
;;
esac
done

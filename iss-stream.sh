#!/bin/bash

~/stream/iss.py > /tmp/iss.log && vischeck=$(</tmp/iss.log)

case "$1" in
ch0)
while sleep 60; do
~/stream/iss.py > /tmp/iss.log && visibility=$(</tmp/iss.log)
if [ "$visibility" != "$vischeck" ]; then pkill -f livestreamer && echo -e "\e[31mstream killed due to change from $vischeck to $visibility\e[0m"; else echo -e "\e[31meverything is fine, don't panic!\e[0m"; fi
vischeck=$visibility
done &
;;
esac

# keeps the livestream up and running
while true; do
case "$1" in
ch0)
~/stream/iss.py > /tmp/iss.log && visibility=$(</tmp/iss.log)
if [ $visibility != eclipsed ]; then
/usr/local/bin/livestreamer http://ustream.tv/channel/iss-hdev-payload best --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --threshold .01 --video_fifo .01 --fps 30 --timeout 20 --live {filename}"
else
/usr/local/bin/livestreamer http://ustream.tv/channel/live-iss-stream best --player omxplayer --fifo  --player-args "--layer 1000 --win '0 0 800 480' --threshold .01 --video_fifo .01 --fps 30 --timeout 20 --live {filename}"
fi
;;
ch1)
/usr/local/bin/livestreamer http://ustream.tv/channel/iss-hdev-payload best --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --timeout 20 --live {filename}"
;;
ch2)
/usr/local/bin/livestreamer http://ustream.tv/channel/live-iss-stream best --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --timeout 20 --live {filename}"
;;
ch3)
/usr/local/bin/livestreamer http://ustream.tv/channel/nasa-hd-tv best --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --timeout 20 --live {filename}"
;;
esac
done

#!/bin/bash

case "$1" in
ch0)
while true; do
visibility=$(python -c 'import iss')
if [ $visibility = "daylight" ]; then
 livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_720p --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --live {filename}"
elif [ $visibility = "eclipsed" ]; then
 livestreamer http://ustream.tv/channel/live-iss-stream mobile_480p --player omxplayer --fifo  --player-args "--layer 1000 --win '0 0 800 480' --live {filename}"
fi
done &
;;
ch1)
while true; do
livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_720p --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --live {filename}"
done &
;;
ch2)
while true; do
livestreamer http://ustream.tv/channel/live-iss-stream mobile_480p --player omxplayer --fifo --player-args "--layer 1000 --win '0 0 800 480' --live {filename}"
done &
;;
esac

while sleep 60; do 
wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"
DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xauthority /usr/bin/feh -F -Z /tmp/issorbit.png
done &

wget -O /tmp/ISS-Display-image1.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544"
avconv -loop 1 -i /tmp/ISS-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video1.mp4
 
while true; do
(wget -O /tmp/ISS-Display-image2.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image2.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video2.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 1100 --win "0 0 100 100" ) &
sleep 60
 
(wget -O /tmp/ISS-Display-image1.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video1.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 1200 --win "0 0 100 100") &
sleep 60
done

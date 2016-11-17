# orbit overlay in top left corner; have to simplify this..
wget -O /tmp/ISS-Display-image3.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"
avconv -loop 1 -i /tmp/ISS-Display-image3.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video3.mp4
 
while true; do
(wget -O /tmp/ISS-Display-image4.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image4.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video4.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video3.mp4 --layer 1100 --win "0 0 200 240" ) &
sleep 60
 
(wget -O /tmp/ISS-Display-image3.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image3.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video3.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video4.mp4 --layer 1200 --win "0 0 200 240") &
sleep 60
done

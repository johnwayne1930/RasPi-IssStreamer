# orbit overlay in top left corner; have to simplify this..
wget -O /tmp/SUN-Display-image1.jpg "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg"
avconv -loop 1 -i /tmp/SUN-Display-image1.jpg -tune stillimage -t 10 -y -r 5 /tmp/SUN-Display-video1.mp4
 
while true; do
(wget -O /tmp/SUN-Display-image2.jpg "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg";
avconv -loop 1 -i /tmp/SUN-Display-image2.jpg -tune stillimage -t 10 -y -r 5 /tmp/SUN-Display-video2.mp4) &
(omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 0 80 80" ) &
sleep 60
 
(wget -O /tmp/ISS-Display-image1.jpg "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg";
avconv -loop 1 -i /tmp/SUN-Display-image1.jpg -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video1.mp4) &
(omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 0 80 80") &
sleep 60
done

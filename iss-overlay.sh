# orbit picture for the background
wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"
DISPLAY=:0.0 XAUTHORITY=~/.Xauthority /usr/bin/feh -F -Z -R 30 /tmp/issorbit.png &
while sleep 120; do wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"; done &

# orbit overlay in top left corner; have to simplify this..
wget -O /tmp/ISS-Display-image1.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544"
avconv -loop 1 -i /tmp/ISS-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video1.mp4
 
while true; do
(wget -O /tmp/ISS-Display-image2.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image2.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video2.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video1.mp4 --layer 2 --win "0 0 80 80" ) &
sleep 60
 
(wget -O /tmp/ISS-Display-image1.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544";
avconv -loop 1 -i /tmp/ISS-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/ISS-Display-video1.mp4) &
(omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80" &
sleep 9;
omxplayer -o hdmi /tmp/ISS-Display-video2.mp4 --layer 3 --win "0 0 80 80") &
sleep 60
done


# orbit overlay in top left corner; have to simplify this..
wget -O /tmp/SUN-Display-image1.png "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg"
avconv -loop 1 -i /tmp/SUN-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/SUN-Display-video1.mp4
 
while true; do
(wget -O /tmp/SUN-Display-image2.png "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg";
avconv -loop 1 -i /tmp/SUN-Display-image2.png -tune stillimage -t 10 -y -r 5 /tmp/SUN-Display-video2.mp4) &
(omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video1.mp4 --layer 2 --win "0 400 80 480" ) &
sleep 60
 
(wget -O /tmp/SUN-Display-image1.png "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg";
avconv -loop 1 -i /tmp/SUN-Display-image1.png -tune stillimage -t 10 -y -r 5 /tmp/SUN-Display-video1.mp4) &
(omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480" &
sleep 9;
omxplayer -o hdmi /tmp/SUN-Display-video2.mp4 --layer 3 --win "0 400 80 480") &
sleep 60
done

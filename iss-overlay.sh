# orbit picture for the background
wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"
DISPLAY=:0.0 XAUTHORITY=~/.Xauthority /usr/bin/feh -F -Z -R 30 /tmp/issorbit.png &
while sleep 120; do wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=600&height=300&mode=M&satid=25544"; done &

# orbit picture for the top left
wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544"
DISPLAY=:0.0 XAUTHORITY=~/.Xauthority /usr/bin/feh -G 80x80+720+0 -F -Z -R 30 /tmp/issorbit.png &
while sleep 120; do wget -O /tmp/issorbit.png "http://www.heavens-above.com/orbitdisplay.aspx?icon=iss&width=150&height=150&satid=25544"; done &

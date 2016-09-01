#!/bin/bash

case "$1" in
ch0) # HDEV ustream channel and Live ISS Stream ustream channel swap according to day/night time of iss orbit
screen -X -S stream quit
echo -e "Set channel 0\nswitching channels automatically"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch0; exec bash'
;;
ch1) # High Definition Earth Viewing (HDEV) experiment ustream channel
screen -X -S stream quit
echo -e "Set channel 1\nHDEV"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch1; exec bash'
;;
ch2) # Live ISS Stream ustream channel
screen -X -S stream quit
echo -e "Set channel 2\nISS Stream"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch2; exec bash'
;;
ch3) # NASA Public-Education ustream channel
screen -X -S stream quit
echo -e "Set channel 3\nNASA TV"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch3; exec bash'
;;
stop) # stops all actions without starting new ones
echo "Stream Ended"
screen -X -S stream quit
exit
;; 
*) # in case the input is wrong
echo -e "The cosmic object you are looking for has disappeared beyond the event horizon\nUsage: $(basename $0) {ch0|ch1|ch2|ch3|stop}"
exit 1
;;
esac  


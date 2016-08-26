#!/bin/bash

case "$1" in
ch0) # HDEV ustream channel and Canadarm2/interior ustream channel swap according to day/night time of iss orbit
screen -X -S stream quit
echo "Set channel auto"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh "$1"; exec bash'
;;
ch1) # HDEV ustream channel
screen -X -S stream quit
echo "Set channel 1"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh "$1"; exec bash'
;;
ch2) # Canadarm2/interior ustream channel
screen -X -S stream quit
echo "Set channel 2"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh "$1"; exec bash'
;;
stop) # stops all actions without starting new ones
echo "Stream Ended"
screen -X -S stream quit
exit
;; 
*) # in case the input is wrong
echo "Usage: $(basename $0) {ch0|ch1|ch2|stop}"
exit 1
;;
esac  


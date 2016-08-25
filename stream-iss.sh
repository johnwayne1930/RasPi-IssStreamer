#!/usr/bin/env bash

case "$1" in

ch0)
screen -X -S stream quit
echo "Set Channel auto"
screen -d -m -S stream sh -c './stream/stream-iss0.sh; exec bash'
;;
ch1)
screen -X -S stream quit
echo "Set Channel 1"
screen -d -m -S stream sh -c './stream/stream-iss1.sh; exec bash'
;;
ch2)
screen -X -S stream quit
echo "Set Channel 2"
screen -d -m -S stream sh -c './stream/stream-iss2.sh; exec bash'
;;
stop)
echo "Stream Ended"
screen -X -S stream quit
exit
;; 
*)
echo "Usage: $(basename $0) {ch0|ch1|ch2|stop}"
exit 1
;;
esac  

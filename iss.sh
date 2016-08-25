#!/usr/bin/env bash

case "$1" in

ch0)
screen -X -S stream quit
echo "Set channel auto"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch0; exec bash'
;;
ch1)
screen -X -S stream quit
echo "Set channel 1"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch1; exec bash'
;;
ch2)
screen -X -S stream quit
echo "Set channel 2"
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch2; exec bash'
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


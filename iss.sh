#!/bin/bash

killstream () {
for session in $(screen -ls | grep -o '[0-9]\{5\}') # or maybe?: for session in $(screen -ls | grep -o '[0-9]\+')
do
screen -S "${session}" -X quit;
done
}

case "$1" in
ch0) # HDEV ustream channel and Live ISS Stream ustream channel swap according to day/night time of iss orbit
killstream
echo -e "Set channel 0\nswitching channels automatically"
screen -d -m -S overlay sh -c '~/stream/iss-overlay.sh; exec bash'
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch0; exec bash'
;;
ch1) # High Definition Earth Viewing (HDEV) experiment ustream channel
killstream
echo -e "Set channel 1\nHDEV"
screen -d -m -S overlay sh -c '~/stream/iss-overlay.sh; exec bash'
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch1; exec bash'
;;
ch2) # Live ISS Stream ustream channel
killstream
echo -e "Set channel 2\nISS Stream"
screen -d -m -S overlay sh -c '~/stream/iss-overlay.sh; exec bash'
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch2; exec bash'
;;
ch3) # NASA Public-Education ustream channel
killstream
echo -e "Set channel 3\nNASA TV"
screen -d -m -S overlay sh -c '~/stream/iss-overlay.sh; exec bash'
screen -d -m -S stream sh -c '~/stream/iss-stream.sh ch3; exec bash'
;;
all) # All ustream channels in Surveillance mode
killstream
echo -e "Set channels to surveillance mode"
screen -d -m -S overlay sh -c '~/stream/iss-overlay.sh; exec bash'
screen -d -m -S stream1 sh -c '~/stream/iss-stream-s.sh ch1; exec bash'
screen -d -m -S stream2 sh -c '~/stream/iss-stream-s.sh ch2; exec bash'
screen -d -m -S stream3 sh -c '~/stream/iss-stream-s.sh ch3; exec bash'
;;
stop) # stops all actions without starting new ones
echo "Stream Ended"
killstream
exit
;; 
*) # in case the input is wrong
echo -e "The cosmic object you are looking for has disappeared beyond the event horizon\nUsage: $(basename $0) {ch0|ch1|ch2|ch3|all|stop}"
exit 1
;;
esac  


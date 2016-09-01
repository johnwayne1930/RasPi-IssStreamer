# RasPi-iss-streamer

Stream stunning footage from NASA's High Definition Earth Viewing (HDEV) Cameras to your Raspberry Pi.

Credit to those Blog's for some ideas.
<br>https://bradsblahblog.com/2016/07/28/space-frame
<br>http://blog.miguelgrinberg.com/post/watch-live-video-of-earth-on-your-raspberry-pi

For my space frame I used a *Raspberry Pi 2 B* with latest *Raspbian Jessie* installed and the *Official 7" Display*.<br>
See pictrue http://imgur.com/IzFGym5

**1. Preparation**

First things first. We have to install all dependencies to make this work proper.

Obligatory updates...
> sudo apt-get update <br>
> sudo apt-get upgrade

To download the RasPi-iss-streamer you need GitHub.
> sudo apt-get install git

Make sure you are in the users home directory by run
> cd

and run this command to download the necessary scripts.
> git clone https://github.com/johnwayne1930/RasPi-iss-streamer.git stream

Make them executable.
> sudo chmod +x iss.sh && sudo chmod +x iss.py && sudo chmod +x iss-stream.sh

Livestreamer for the livestream.
> sudo apt-get install python-pip <br>
> pip install livestreamer

Some stuff to get good stream quality.
> sudo apt-get install librtmp-dev <br>
> pip install cffi <br>
> pip install python-librtmp

Omxplayer, because livestreamer is not a player itself.
> sudo apt-get install omxplayer

Also an converter from image to video which we need for the position overlay.
> sudo apt-get install libav-tools

Feh, the image viewer.
> sudo apt-get install feh

Screen for emulating terminal sessions.
> sudo apt-get install screen 

Python.
> sudo apt-get install python3 <br>
> pip install urllib urllib2

That should be all for now.

**2. Usage**

The `<iss.sh>` starts the stream on the Raspberry Pi display.
Therefore open the Terminal or SSH into your Pi and use one of following commands:

> ~/stream/iss.sh ch0 <br>

swaps automaticly between the HDEV stream (daytime) and the other ISS Stream (nighttime).

> ~/stream/iss.sh ch1 <br>

starts HDEV ustream which swaps between three different cameras from time to time.

> ~/stream/iss.sh ch2 <br>

starts the other NASA ustream which shows sometimes interior footage or the view from Canadarm2's camera.

> ~/stream/iss.sh ch3 <br>

starts the NASA TV ustream.

> ~/stream/iss.sh stop <br>

cancels all runnig actions from previous commands.

Furthermore, each of the three channel commands above starts a ISS position picture in the top left corner and a big fullscreen picture diagram of ISS's actual orbit in the background, so you have something to watch if the stream goes down for some reason.

**3. Notation**

Due to large data traffic it is not recommended to run the stream with a mobile internet connection.

Control the stream on your Pi from your smartphone.<br>
https://play.google.com/store/apps/details?id=uk.co.knowles_online.raspberrysshlite<br>
or with something similar for iPhone.

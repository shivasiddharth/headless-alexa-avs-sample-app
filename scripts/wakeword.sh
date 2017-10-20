#!/bin/bash
cd ~/Desktop/alexa-avs-sample-app/samples
sleep 45
aplay /home/pi/headless-alexa-avs-sample-app/Startup.wav
cd wakeWordAgent/src && sudo ./wakeWordAgent -e kitt_ai

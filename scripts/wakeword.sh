#!/bin/bash
cd ~/Desktop/alexa-avs-sample-app/samples
sleep 45s
aplay /home/pi/headless-alexa-avs-sample-app/Startup.wav
cd wakeWordAgent/src && ./wakeWordAgent -e kitt_ai

# headless-alexa-avs-sample-app

**Scripts to autostart the Amazon alexa-avs-sample-app on boot on a headless Pi** 

**********************************************************************  
**This does not modify your installed alexa-avs-sample-app in any manner. Please do not open issues relating to the working of alexa-avs-sample-app here. Post your issues pertaining to the running of services alone here.**  
**********************************************************************  

1. Clone the git using:  
```
git clone https://github.com/shivasiddharth/headless-alexa-avs-sample-app  
```

2. Check and verify the path of the installed alexa-avs-sample-app in the clientstart.sh, companionstart.sh	and wakeword.sh scripts  

3. Make the installer executable using:
```
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/installer.sh  
```

4. Execute the installer:  
```
sudo /home/pi/headless-alexa-avs-sample-app/installer.sh  
```

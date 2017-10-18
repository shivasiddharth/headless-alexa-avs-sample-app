#!/bin/bash
read -r -p "Enter the location of alexa-avs-sample-app folder, Eg: if it is in desktop then enter ~Desktop or \nif it is in /home/pi/ directory, then enter /home/pi" path
read -r -p "Have you placed the alexa app in $path? (Y/N)" verify_interrupt
case ${verify_interrupt} in
            [yY] )
                echo "Continuing ..."
            ;;
            * )
                echo "Installation interrupted. Please change the alexa app location in the scripts."
                exit
            ;;
esac
sed '1 a cd $path/alexa-avs-sample-app/samples' /home/pi/headless-alexa-avs-sample-app/scripts/clientstart.sh
sed '1 a cd $path/alexa-avs-sample-app/samples' /home/pi/headless-alexa-avs-sample-app/scripts/companionstart.sh
sed '1 a cd $path/alexa-avs-sample-app/samples' /home/pi/headless-alexa-avs-sample-app/scripts/wakeword.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/clientstart.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/companionstart.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/service-installer.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/wakeword.sh
sudo /home/pi/headless-alexa-avs-sample-app/scripts/service-installer.sh
sudo systemctl enable companionapp.service
sudo systemctl enable client.service
sudo systemctl enable wakeword.service
sudo systemctl start wakeword.service

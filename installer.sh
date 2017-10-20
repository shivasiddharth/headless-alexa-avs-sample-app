#!/bin/bash
read -r -p "Have you checked the Alexa App location specified in the scripts? (Y/N)" verify_interrupt
case ${verify_interrupt} in
            [yY] )
                echo "Continuing ..."
            ;;
            * )
                echo "Installation interrupted. Please change the alexa app location in the scripts."
                exit
            ;;
esac
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/clientstart.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/companionstart.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/service-installer.sh
sudo chmod +x /home/pi/headless-alexa-avs-sample-app/scripts/wakeword.sh
sudo /home/pi/headless-alexa-avs-sample-app/scripts/service-installer.sh
sudo systemctl enable companionapp.service
sudo systemctl enable client.service
sudo systemctl enable wakeword.service
sudo systemctl start companionapp.service
sudo systemctl start client.service
sudo systemctl start wakeword.service

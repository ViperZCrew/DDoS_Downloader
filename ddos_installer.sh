#!/bin/bash

#updating system

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[39"

printf '\e[8;30;90t'
clear
echo -e $RED '
·▄▄▄▄  ·▄▄▄▄        .▄▄ ·     ·▄▄▄▄        ▄▄▌ ▐ ▄▌ ▐ ▄ ▄▄▌         ▄▄▄· ·▄▄▄▄  ▄▄▄ .▄▄▄  
██▪ ██ ██▪ ██ ▪     ▐█ ▀.     ██▪ ██ ▪     ██· █▌▐█•█▌▐███•  ▪     ▐█ ▀█ ██▪ ██ ▀▄.▀·▀▄ █·
▐█· ▐█▌▐█· ▐█▌ ▄█▀▄ ▄▀▀▀█▄    ▐█· ▐█▌ ▄█▀▄ ██▪▐█▐▐▌▐█▐▐▌██▪   ▄█▀▄ ▄█▀▀█ ▐█· ▐█▌▐▀▀▪▄▐▀▀▄ 
██. ██ ██. ██ ▐█▌.▐▌▐█▄▪▐█    ██. ██ ▐█▌.▐▌▐█▌██▐█▌██▐█▌▐█▌▐▌▐█▌.▐▌▐█ ▪▐▌██. ██ ▐█▄▄▌▐█•█▌
▀▀▀▀▀• ▀▀▀▀▀•  ▀█▄▀▪ ▀▀▀▀     ▀▀▀▀▀•  ▀█▄▀▪ ▀▀▀▀ ▀▪▀▀ █▪.▀▀▀  ▀█▄▀▪ ▀  ▀ ▀▀▀▀▀•  ▀▀▀ .▀  ▀
'

sleep 1
echo " "
echo " "

echo -e $BLUE "

[1] Update And Upgrade System and Script
[2] Download The Full DDoS Pack (Linux)
[3] Print Computer Information
[4] Credits
[5] Exit
"

echo -e $CYAN ""
read -p "Enter a option: " inp1

if [[ "$inp1" = 1 ]]; then
	apt-get install figlet python python2
	clear
	echo -e $YELLOW ""
	figlet Updating...
	apt update && apt upgrade && apt full-upgrade  && apt dist-upgrade -y
	echo -e $GREEN "Updating Successfull, quiting.."
	bash ddos_installer.sh
fi 

if [[ "$inp1" = 2 ]]; then
	echo -e $MAGENTA "
Starting downloader for linux..."
	sleep 1
	bash downloader.sh
fi

if [[ "$inp1" = 3 ]]; then
	neofetch
	sleep 1

fi

if [[ "$inp1" = 4 ]]; then

	echo -e $CYAN "
 ▄█    █▄   ▄█     ▄███████▄    ▄████████    ▄████████  ▄███████▄   ▄████████    ▄████████    ▄████████  ▄█     █▄  
███    ███ ███    ███    ███   ███    ███   ███    ███ ██▀     ▄██ ███    ███   ███    ███   ███    ███ ███     ███ 
███    ███ ███▌   ███    ███   ███    █▀    ███    ███       ▄███▀ ███    █▀    ███    ███   ███    █▀  ███     ███ 
███    ███ ███▌   ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀  ▀█▀▄███▀▄▄ ███         ▄███▄▄▄▄██▀  ▄███▄▄▄     ███     ███ 
███    ███ ███▌ ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀     ▄███▀   ▀ ███        ▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ███     ███ 
███    ███ ███    ███          ███    █▄  ▀███████████ ▄███▀       ███    █▄  ▀███████████   ███    █▄  ███     ███ 
███    ███ ███    ███          ███    ███   ███    ███ ███▄     ▄█ ███    ███   ███    ███   ███    ███ ███ ▄█▄ ███ 
 ▀██████▀  █▀    ▄████▀        ██████████   ███    ███  ▀████████▀ ████████▀    ███    ███   ██████████  ▀███▀███▀  
                                            ███    ███                          ███    ███                          
"
fi

if [[ "$inp1" = 5 ]]; then
	exit
fi

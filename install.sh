#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "$red You don't have Root privilegies, execute the script as root.$nc"
        exit 1
fi
#Uupdate
sudo apt-get update
#bash
if which bash >/dev/null; then
		sleep 0.25
    echo -e "$nc[$green BASH $nc] Installed [$green✓$nc]"
else
		sleep 0.25
	echo -e "$$nc[$green BASH $nc] Not Installed [$red✗$nc]"
			sleep 1
		echo "Install Bash "
			sudo apt-get install bash
fi
#curl
if which curl >/dev/null; then
                sleep 0.25
    echo -e "$nc[$green CURL $nc] Installed [$green✓$nc]"
else
                sleep 0.25
        echo -e "$nc[$green CURL $nc] Not Installed [$red✗$nc]"
                        sleep 1
                echo "Install curl "
                        sudo apt-get install curl
fi
#wget
if which wget >/dev/null; then
                sleep 0.25
    echo -e "[$green WGET $nc] Installed [$green✓$nc]"
else
                sleep 0.25
        echo -e "[$green WGET $nc] Not Installed [$red✗$nc]"
                        sleep 1
                echo "Install WGET "
                        sudo apt-get install wget
fi
#git
if which git >/dev/null; then
                sleep 0.25
    echo -e "[$green GIT  $nc] Installed [$green✓$nc]"
else
                sleep 0.25
        echo -e "[$green GIT  $nc] Not Installed [$red✗$nc]"
                        sleep 1
                echo "Install GIT "
                        sudo apt-get install git 
fi


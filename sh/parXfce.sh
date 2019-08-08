#!/bin/bash
#Progremci
<<comments
"Bash Coloring Index"
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37

Num  Colour    #define         R G B

0    black     COLOR_BLACK     0,0,0
1    red       COLOR_RED       1,0,0
2    green     COLOR_GREEN     0,1,0
3    yellow    COLOR_YELLOW    1,1,0
4    blue      COLOR_BLUE      0,0,1
5    magenta   COLOR_MAGENTA   1,0,1
6    cyan      COLOR_CYAN      0,1,1
7    white     COLOR_WHITE     1,1,1
comments

#Değişkenler
yellow=`tput setaf 3`
blue=`tput setaf 4`
red=`tput setaf 1`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`
line="--------------------------------------"
clear

echo "${yellow}Progremci Debian AutoSetup™${reset}"
 sleep 2
 clear

echo "${blue}Kurulum Hazırlanıyor..."
 sleep 1 
echo Kurulum Başlıyor... Lütfen Terminalden Ayrılmayınız!
 sleep 2
 clear
echo "${reset}Kurulum Başladı!" 
 sleep 1
 clear
 echo "${line}"
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install snapd
  sudo apt --fix-broken install
 echo "${line}"
 sleep 1


echo "${red}Ruby Kurulacak...${reset}"
 sleep 3
 sudo apt-get install ruby
  sudo apt-get install gem
 echo "${line}"
 sleep 1


echo "${cyan}Spotify Kurulacak...${reset}"
#Spotify'ı Debian depolarında göremediğim için depo ekledim.
 sleep 3
 sudo apt install spotify-client
 echo "${line}"
 sleep 1


echo "${yellow}Git Kurulacak...${reset}"
 sleep 3
 sudo apt-get install git
 echo "${line}"
 sleep 1

echo "${cyan}Deepin System Monitor Kurulacak...${reset}"
sleep 3
sudo apt-get install deepin-system-monitor
echo "${line}"
sleep 1

echo "${cyan}Visual Studio Code Kurulacak...${reset}"
 sleep 3
 cd /media/pardus/TUX/Setups/deb
 sudo dpkg -i code_1.36.1-1562627527_amd64.deb
 echo "${line}"
 sleep 1


echo "${magenta}Discord Kurulacak...${reset}"
 sleep 3
 sudo apt-get install discord
 sudo dpkg -i discord-0.0.9.deb
 sudo apt --fix-broken install
 sudo apt-get update
 sudo apt-get upgrade
 echo "${line}"
 sleep 1


echo Neofetch Kurulacak...
 sleep 3
 sudo apt-get install neofetch
 echo "${line}"
 sleep 1


echo "${blue}Telegram Ev Dizinine Alınıyor...${reset}"
 cp -r /media/pardus/TUX/Setups/tar/tsetup.1.6.7.tar.xz /home/pardus/
 cd ~
 tar -xf tsetup.1.6.7.tar.xz
 rm tsetup.1.6.7.tar.xz
  echo Telegram Başarıyla Alındı!
  echo "${line}"
 sleep 1


echo "${red}Çöpler Dışarı Atılıyor..."
 sleep 3
 sudo apt-get autoremove
 sudo apt-get clean
 clear
 echo "${line}"
 sleep 1


echo "${yellow}KURULUM TAMAMLANDI PROGREMCI!"
 sleep 2
 clear
echo "${reset}progremci.com"
 sleep 2
 clear
 echo "${line}" 
 neofetch
 sleep 5
 echo ":)"
exit

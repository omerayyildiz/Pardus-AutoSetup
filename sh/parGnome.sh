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
 sleep 1
 clear
echo "${reset}Kurulum Başladı!" 
 sleep 1
 clear
 echo $line
  echo e | sudo apt-get update
  echo e | sudo apt-get upgrade
  echo e | sudo apt-get install curl
  echo e | sudo apt --fix-broken install
  firefox https://go.microsoft.com/fwlink/?LinkID=760868
  echo "İndi!"
  firefox https://discordapp.com/api/download?platform=linux&format=deb
 echo $line
 sleep 1
 clear

echo "${red}Ruby Kurulacak...${reset}"
 echo $line
 sleep 1
  echo e | sudo apt-get install ruby 
   echo e | sudo apt-get install gem 
 echo $line
 sleep 1
 clear

echo "${cyan}Spotify Kurulacak...${reset}"
#Spotify'ı Debian depolarında göremediğim için depo ekledim.
 echo $line
 sleep 1
  echo e | sudo apt --fix-broken install
  curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  echo e | sudo apt-get update
  echo e | sudo apt-get install spotify-client
 echo $line
 sleep 1
 clear

echo "${yellow}Git Kurulacak...${reset}"
 echo $line
 sleep 1
  echo e | sudo apt-get install git
  #Git ayarlarını kendinize göre yapınız!
   git config --global user.name "Ömer Ayyıldız" 
   git config --global user.email "oayyildiz416@gmail.com"
 echo $line
 sleep 1
 clear

echo "${cyan}Visual Studio Code Kurulacak...${reset}"
 echo $line
 sleep 1
  echo e | sudo apt --fix-broken install
  cd /home/pardus/İndirilenler
  sudo dpkg -i code_1.41.1-1576681836_amd64.deb
    echo "${yellow}Eklentiler entegre ediliyor. Bu biraz zaman alabilir..."
      cp -R /media/pardus/TUX/Pardus-AutoSetup/extensions /home/pardus/.vscode
    echo "Her şey tamam! Devam edelim...${reset}"
 echo $line
 sleep 1
 clear

echo "${magenta}Discord Kurulacak...${reset}"
echo $line
sleep 1
  echo e | sudo apt-get update
  echo e | sudo apt-get upgrade
  sudo dpkg -i discord-0.0.9.deb
  echo e | sudo apt --fix-broken install
 echo $line
 sleep 1
 clear

echo Neofetch Kurulacak...
 echo $line
 sleep 1
  echo e | sudo apt-get install neofetch
 echo $line
 sleep 1
 clear

echo "${blue}Telegram İndiriliyor...${reset}"
 echo $line
  echo e | sudo apt-get install telegram-desktop
 echo $line
 sleep 1
 clear

echo "${red}Çöpler Dışarı Atılıyor..."
 echo $line
 sleep 1
  echo e | sudo apt-get autoremove
  echo e | sudo apt-get clean
 clear
 echo $line
 sleep 1
 clear
 
echo "${yellow}Kurulumlar Kontrol Ediliyor...${reset}"
  echo "Ruby Versiyon"
   ruby --version
   echo $line
  echo "Gem Versiyon"
   gem --version
   echo $line
  echo "Spotify Version"
   spotify --version
   echo $line
  echo "Git Versiyon"
   git --version
   echo $line   
  echo "VSCode Versiyon"
   code --version
   echo $line
  echo "Neofetch Versiyon"
   neofetch --version
   echo $line
sleep 10

echo "${yellow}KURULUM TAMAMLANDI PROGREMCI!"
 sleep 1
  clear
echo "${reset}progremci.com"
 sleep 2
  clear
 echo $line 
  neofetch
 echo ":)"
exit

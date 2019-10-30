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
 echo $line
  echo e | sudo apt-get update
  echo e | sudo apt-get upgrade   
  echo e | sudo apt --fix-broken install
 echo $line
 sleep 1


echo "${red}Ruby Kurulacak...${reset}"
 sleep 1
  echo e | sudo apt-get install ruby
  echo e | sudo apt-get install gem
 echo $line
 sleep 1


echo "${cyan}Spotify Kurulacak...${reset}"
 sleep 1
  echo e | sudo apt --fix-broken install
  echo e | sudo apt install spotify-client
 echo $line
 sleep 1


 <<comments
   parGnome
     echo "${cyan}Spotify Kurulacak...${reset}"
     #Spotify'ı Debian depolarında göremediğim için depo ekledim.
      sleep 3
      curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
      echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
      sudo apt-get update && sudo apt-get install spotify-client
      echo $line
      sleep 1
comments


echo "${yellow}Git Kurulacak...${reset}"
 sleep 1
  echo e | sudo apt-get install git
  #Git ayarlarını kendinize göre yapınız!
   git config --global user.name "Ömer Ayyıldız" 
   git config --global user.email "oayyildiz416@gmail.com"
 echo $line
 sleep 1


echo "${cyan}Deepin System Monitor Kurulacak...${reset}"
 sleep 1
  echo e | sudo apt-get install deepin-system-monitor
 echo $line
 sleep 1


echo "${cyan}Visual Studio Code Kurulacak...${reset}"
 sleep 1
  echo e | sudo apt --fix-broken install
  cd /h/Pardus-AutoSetup/deb
  sudo dpkg -i code_1.37.0-1565227985_amd64.deb
  echo "${yellow}Eklentiler entegre ediliyor. Bu biraz zaman alabilir..."
  cp -R /h/Pardus-AutoSetup/extensions /home/pardus/.vscode
  echo "Her şey tamam! Devam edelim...${reset}"
 echo $line
 sleep 1


echo "${magenta}Discord Kurulacak...${reset}"
 sleep 1
  echo e | sudo dpkg -i discord-0.0.9.deb
  echo e | sudo apt --fix-broken install
  echo e | sudo apt-get update
  echo e | sudo apt-get upgrade
 echo $line
 sleep 1


echo Neofetch Kurulacak...
 sleep 1
  echo e | sudo apt-get install neofetch
 echo $line
 sleep 1


echo "${blue}Telegram Ev Dizinine Alınıyor...${reset}"
 cp -r /h/Pardus-AutoSetup/tar/tsetup.1.6.7.tar.xz /home/pardus/
 cd ~
 tar -xf tsetup.1.6.7.tar.xz
 rm tsetup.1.6.7.tar.xz
  echo Telegram Başarıyla Alındı!
  echo $line
 sleep 1


echo "${red}Çöpler Dışarı Atılıyor..."
 sleep 1
  echo e | sudo apt-get autoremove
  echo e | sudo apt-get clean
 clear
 echo $line
 sleep 1


echo "${yellow}Kurulumlar Kontrol Ediliyor...${reset}"
  echo "Ruby Versiyon"
   ruby --version
   echo $line
  echo "Gem Versiyon"
   gem --version
   echo $line
  echo "Spotify Versiyon"
   spotify --version
   echo $line
  echo "Deepin System Monitör Versiyonu"
   deepin-system-monitor --version
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
sleep 15


echo "${yellow}KURULUM TAMAMLANDI PROGREMCI!"
 sleep 2
 clear
echo "${reset}progremci.com"
 sleep 2
 clear
 echo $line 
 neofetch
 sleep 5
 echo ":)"
exit

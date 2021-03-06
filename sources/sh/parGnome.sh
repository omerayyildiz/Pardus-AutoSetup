#!/bin/bash
#Progremci
#Variables
yellow=`tput setaf 3`
blue=`tput setaf 4`
red=`tput setaf 1`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`
line="--------------------------------------"
clear

echo "${yellow}Pardus-AutoSetup™ for omerayyildiz${reset}"
sleep 2
clear

echo "${blue}Arayüz Hazırlanıyor..."
sleep 1
echo "Kurulum Başlıyor... Lütfen Terminalden Ayrılmayınız!"
 #gui-settings config file loading to home directory
  cd /media/pardus/TUX/Pardus-AutoSetup/gui-settings
  cat dconf-settings.ini | dconf load / #gui-settings (be like MacOS)
sleep 1
clear

echo "${reset}Kurulum Başladı!"
sleep 1
clear
echo $line

#Visual Studio Code and Discord deb file install
echo "${blue}Kurulum Paketleri Güncelleniyor...${reset}"
echo $line
  echo e | sudo apt-get install curl
  cd ~/İndirilenler
   curl -O https://dl.discordapp.net/apps/linux/0.0.10/discord-0.0.10.deb
echo $line
   curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
   sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
   sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
   echo e | sudo apt-get install apt-transport-https
echo $line

 echo e | sudo apt-get update
 echo e | sudo apt-get upgrade
 echo e | sudo apt --fix-broken install #repair dpkg
 echo $line
sleep 1
clear

redHeader=$(echo ${PROGLANG^}) #for uppercase
  echo "${red}$redHeader Kurulacak...${reset}"
echo $line
sleep 1
  echo e | sudo apt-get install $PROGLANG
    
    if [ $PROGLANG == "ruby" ]
    then
      echo e | sudo apt-get install gem
    fi

echo $line
sleep 1
clear

  echo "${cyan}Spotify Kurulacak...${reset}"
  #Spotify deb package manuel install
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
clear
echo $line

   echo "${yellow}Git Ayarlanıyor...${reset}"
    git config --global user.name "$GITUSERNAME"
    git config --global user.email "$GITEMAIL"
   echo "${yellow}Git Ayarlandı!${reset}"
echo $line
sleep 2
clear

   echo "${cyan}Visual Studio Code Kurulacak...${reset}"
echo $line
sleep 1
   echo e | sudo apt --fix-broken install
   echo e | sudo apt-get install code
echo $line
sleep 1
clear

   echo "${magenta}Discord Kurulacak...${reset}"
echo $line
sleep 1
   cd ~/İndirilenler
   echo e | sudo apt-get update
   echo e | sudo apt-get upgrade
   sudo dpkg -i discord-0.0.10.deb
   echo e | sudo apt --fix-broken install
echo $line
sleep 1
clear

   echo "Neofetch Kurulacak..."
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
   echo "Spotify Versiyon"
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
sleep 5
clear

    echo "${cyan}Ek Kurulum Olup Olmadığı Denetleniyor...${reset}"
echo $line
sleep 2

if [ $CHANGED_PACKAGES == "e" ]
then
    clear
    echo "EK KURULUMLAR ÇALIŞACAK..."
    echo $line
    cd  /media/pardus/TUX/Pardus-AutoSetup/sh/
    bash container.sh
else
    echo "EK KURULUM BULUNAMADI!"
fi

   echo "${yellow}KURULUM TAMAMLANDI"
sleep 3
clear
   echo "${reset}github.com/omerayyildiz"
sleep 2
clear
echo $line
neofetch
   echo "STAY AT HOME :)"
   sleep 10
exit

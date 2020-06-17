#!/bin/bash
#Design Variables
yellow=`tput setaf 3`
blue=`tput setaf 4`
red=`tput setaf 1`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`
line="--------------------------------------"
cd sources
printf "${yellow}1.Türkçe\n2.English${reset}\n"
read -p "Choose Your Language / Dilini Seç:" langChoice
 if [ $langChoice == 1 ]; then
 clear
   printf "${yellow}1.Gnome\n2.Xfce${reset}\n"
   read -p "Kurulum Tipini Seç:" distroType
      
      if [ $distroType == 1 ]; then
        echo "Türkçe Gnome Kurulumu Başlatılıyor..."
        clear
        sleep 3
        bash setupGnome.sh
        clear
      else
        clear
        echo "Türkçe Xfce Kurulumu Başlatılıyor..."
        sleep 3
        bash setupXFCE.sh
        clear
      fi
 else
 clear
   printf "${yellow}1.Gnome\n2.Xfce${reset}\n"
   read -p "Choose Installation Type:" distroType
      
      if [ $distroType == 1 ]; then
        clear
        echo "English Gnome Installation Running..."
        sleep 3
        bash setupGnomeEng.sh
        clear 
      else 
        clear
        echo "English Xfce Installation Runing..."
        sleep 3
        bash setupXfceEng.sh
        clear
      fi
 fi
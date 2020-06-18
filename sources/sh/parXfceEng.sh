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

echo "${blue}Upload Graphics Settings..."
sleep 1
 #gui-settings config file loading to home directory
  cd /media/pardus/TUX/Pardus-AutoSetup/gui-settings
  cat dconf-settings.ini | dconf load / #gui-settings (be like MacOS)
sleep 1
clear

echo "${reset}Installation Starting!"
sleep 1
clear
echo $line

#Visual Studio Code and Discord deb file install
echo "${blue}Installation Package Updating...${reset}"
echo $line
  echo e | sudo apt-get install curl
  cd ~/Downloads
   curl -O https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
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
  echo "${red}Installing $redHeader...${reset}"
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

  echo "${cyan}Installing Spotify...${reset}"
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

   echo "${yellow}Installing Git...${reset}"
echo $line
sleep 1
   echo e | sudo apt-get install git
clear
echo $line

   echo "${yellow}Git Establishing...${reset}"
    git config --global user.name "$GITUSERNAME"
    git config --global user.email "$GITEMAIL"
   echo "${yellow}Git Established!${reset}"
echo $line
sleep 2
clear

   echo "${cyan}Installing Visual Studio Code...${reset}"
echo $line
sleep 1
   echo e | sudo apt --fix-broken install
   echo e | sudo apt-get install code
echo $line
sleep 1
clear

   echo "${magenta}Installing Discord...${reset}"
echo $line
sleep 1
   cd ~/Downloads
   echo e | sudo apt-get update
   echo e | sudo apt-get upgrade
   sudo dpkg -i discord-0.0.9.deb
   echo e | sudo apt --fix-broken install
echo $line
sleep 1
clear

   echo "Installing Neofetch..."
echo $line
sleep 1
   echo e | sudo apt-get install neofetch
echo $line
sleep 1
clear

   echo "${blue}Installing Telegram...${reset}"
echo $line
   echo e | sudo apt-get install telegram-desktop
echo $line
sleep 1
clear

   echo "${red}Deleting Cache..."
echo $line
sleep 1
   echo e | sudo apt-get autoremove
   echo e | sudo apt-get clean
clear
echo $line
sleep 1
clear

   echo "${yellow}Checking Packages...${reset}"
   echo "Ruby Version"
     ruby --version
echo $line
   echo "Gem Version"
     gem --version
echo $line
   echo "Spotify Version"
     spotify --version
echo $line
    echo "Git Version"
     git --version
echo $line
    echo "VSCode Version"
     code --version
echo $line
    echo "Neofetch Version"
     neofetch --version
echo $line
sleep 5
clear

    echo "${cyan}Checking For Other Package Installation...${reset}"
echo $line
sleep 2

if [ $CHANGED_PACKAGES == "e" ]
then
    clear
    echo "Installing Other Packages..."
    echo $line
    cd  /media/pardus/TUX/Pardus-AutoSetup/sh/
    bash container.sh
else
    echo "NOT FOUND PACKAGES!"
fi

   echo "${yellow}INSTALLATION SUCCESSFULL"
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

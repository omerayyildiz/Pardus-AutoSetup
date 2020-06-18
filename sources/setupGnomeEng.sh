#!/bin/bash
export PROGLANG GITUSERNAME GITEMAIL CHANGED_PACKAGES #GLOBALS
CHANGED_PACKAGES="h" # "h" = no
#Design Variables
yellow=`tput setaf 3`
blue=`tput setaf 4`
red=`tput setaf 1`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`
line="--------------------------------------"

# Change all directory path in project files.
cd sources
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(pwd)/|g" setupGnomeEng.sh
cd sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnomeEng.sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfceEng.sh
clear

echo "${yellow}WELCOME TO SETUP CONFIG MANAGER!${reset}"
echo $line

read -p "${cyan}Do you want change default settings?${reset} ${yellow}(y/n):${reset}" answerForChange
if [ $answerForChange == 'y' ]
then
    clear
    read -p "${cyan}Do you want install Ruby?:${reset} ${yellow}(y/n):${reset}" answer
    if [ $answer == 'y' ]
    then
        echo "OK! I set Ruby in your packages list!..."
        PROGLANG="ruby"
        sleep 1
        clear
    else
        read -p "${cyan}What do you want?:${reset}" PROGLANG
        PROGLANG=$(echo $PROGLANG | tr "[A-Z]" "[a-z]") #downcase method
        echo "OK! I set $PROGLANG in your packages list!"
        sleep1
        clear
    fi
    
    #self coding system, that code block add "apt-get" codes to main script after client input.
    read -p "${cyan}Do you want to install new packages next to the default packages?${reset} ${yellow}(y/n):${reset}" packageAnswer
    if [ $packageAnswer == 'y' ]
    then
        clear
           rm -f container.sh
           touch container.sh
           echo -e "#!/bin/bash\n" >> container.sh
        
        read -p "${cyan}How much packages want to install?:${reset}" packagePiece
        counter=0
        while [ $counter -lt $packagePiece ]
        do
            read -p "What does name of package ($counter)?:" packageName
            echo "${magenta}SUCCESSFULL${reset}"
            echo $line
            packageName=$(echo $packageName | tr "[A-Z]" "[a-z]")
            packageCode="\necho 'Installing $packageName...'\necho $line\nsleep 1\necho e | sudo apt-get install $packageName\necho $line\nsleep 1\nclear\n#end of package template code dude \n"
            echo -e $packageCode >> container.sh #container.sh isolated from main script because I couldn't find "push text directly to file" algorithn :D
            counter=$((counter+1))
            
            if [ $counter -eq $packagePiece ]
            then
                date=$(date)
                addCompleted="#Date:$date\n$line"
                echo -e $addCompleted >> container.sh
            fi
        done
        CHANGED_PACKAGES="e" #I added CHANGED_PACKAGES to decide if the program should branch
        
    else
        clear
        echo "${cyan}Ok, I'm setting default packages in your packages list!${reset}"
        sleep 2
        clear
    fi
    
else
    printf "${cyan}Default Packages Name:${reset}\n$line\n${yellow}-Ruby\n-Gem\n-Spotify\n-Git\n-Visual Studio Code\n-Neofetch\n${reset}"
    sleep 3
    clear
fi

clear
echo "${magenta}ONE STEP LEFT!${reset}"
echo $line
read -p "${cyan}Set your Git config username${reset} ${yellow}(user.name):${reset}" GITUSERNAME
read -p "${cyan}Set your Git config e-mail${reset} ${yellow}(user.email):${reset}" GITEMAIL
clear

echo "${magenta}Git settings as shown!${reset}"
echo $line
echo "Username: ${yellow}$GITUSERNAME${reset}"
echo "Email: ${yellow}$GITEMAIL${reset}"
echo $line

read -p "${cyan}Do you want change?${reset} ${yellow}(y/n):${reset}" gitAnswer
if [ $gitAnswer == 'y' ]
then
    read -p "${cyan}Set your Git config username again${reset} ${yellow}(user.name):${reset}" GITUSERNAME
    read -p "${cyan}Set your Git config e-mail again${reset} ${yellow}(user.email):${reset}" GITEMAIL
fi
echo "${magenta}I saved your Git config information for Git installation!${reset}"
sleep 2
clear

echo "${yellow}I SET ALL CONFIG IN PROGRAM. PROGRAM RUNNING...${reset}"
sleep 2
clear
bash parGnomeEng.sh #run main file


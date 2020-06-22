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
PROGLANG="ruby"
line="--------------------------------------"

# Change all directory path in project files.
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(pwd)/|g" setupGnome.sh
cd sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
clear

echo "${yellow}KURULUM BAŞLATICISINA HOŞGELDİNİZ!${reset}"
echo $line

read -p "${cyan}Kurulum Ayarlarını Değiştirmek İstiyor Musunuz?${reset} ${yellow}(e/h):${reset}" answerForChange
if [ $answerForChange == 'e' ]
then
    clear
    read -p "${cyan}Ruby, Varsayılan Olarak Kalsın Mı?${reset} ${yellow}(e/h):${reset}" answer
    if [ $answer == 'e' ]
    then
        echo "Tamamdır! Kurulum Aynen Devam Ediyor..."
        sleep 1
        clear
    else
        read -p "${cyan}Hangi Programlama Dili İle Değiştirmek İstiyorsunuz?:${reset}" PROGLANG
        PROGLANG=$(echo $PROGLANG | tr "[A-Z]" "[a-z]") #downcase method
        echo "İşleme Alındı! Ruby Yerine $PROGLANG Kuracağım!"
        sleep1
        clear
    fi
    
    #self coding system, that code block add "apt-get" codes to main script after client input.
    read -p "${cyan}Eklemek İstediğiniz Ek Paketler Var Mı?${reset} ${yellow}(e/h):${reset}" packageAnswer
    if [ $packageAnswer == 'e' ]
    then
        clear
           rm -f container.sh
           touch container.sh
           echo -e "#!/bin/bash\n" >> container.sh
        
        read -p "${cyan}Kaç Paket Kuracaksınız?:${reset}" packagePiece
        counter=0
        while [ $counter -lt $packagePiece ]
        do
            read -p "$counter.Kurmak İstediğiniz Paket Adı?:" packageName
            echo "${magenta}BAŞARILI!${reset}"
            echo $line
            packageName=$(echo $packageName | tr "[A-Z]" "[a-z]")
            packageCode="\necho '$packageName Kurulacak...'\necho $line\nsleep 1\necho e | sudo apt-get install $packageName\necho $line\nsleep 1\nclear\n#end of package template code dude \n"
            echo -e $packageCode >> container.sh #container.sh isolated from main script because I couldn't find "push text directly to file" algorithn :D
            counter=$((counter+1))
            
            if [ $counter -eq $packagePiece ]
            then
                date=$(date)
                addCompleted="#Date:$date\n#$line"
                echo -e $addCompleted >> container.sh
            fi
        done
        CHANGED_PACKAGES="e" #I added CHANGED_PACKAGES to decide if the program should branch
        
    else
        clear
        echo "${cyan}O Halde Sadece Varsayılan Paketleri Yükleyeceğim!${reset}"
        sleep 2
        clear
    fi
    
else
    echo $line
    printf "${cyan}Kurulacak Paketler:${reset}\n$line\n${yellow}-Ruby\n-Gem\n-Spotify\n-Git\n-Visual Studio Code\n-Neofetch\n${reset}"
    sleep 3
    clear
fi

clear
echo "${magenta}SON BİR ADIM KALDI!${reset}"
echo $line
echo "GIT KULLANMIYOR İSENİZ ENTERE BASIN!"
echo $line
read -p "${cyan}Git Kullanıcı Adınızı Ayarlayın${reset} ${yellow}(user.name):${reset}" GITUSERNAME
read -p "${cyan}Git Emailinizi Ayarlayın${reset} ${yellow}(user.email):${reset}" GITEMAIL
clear

echo "${magenta}Git Config Ayarlarınız Şekildeki Gibidir!${reset}"
echo $line
echo "Kullanıcı Adı: ${yellow}$GITUSERNAME${reset}"
echo "Kullanıcı Emaili: ${yellow}$GITEMAIL${reset}"
echo $line

read -p "${cyan}Değiştirmek İstiyor Musunuz?${reset} ${yellow}(e/h):${reset}" gitAnswer
if [ $gitAnswer == 'e' ]
then
    read -p "${cyan}Git Kullanıcı Adınızı Ayarlayın${reset} ${yellow}(user.name):${reset}" GITUSERNAME
    read -p "${cyan}Git Emailinizi Ayarlayın${reset} ${yellow}(user.email):${reset}" GITEMAIL
fi
echo "${magenta}Ayarlarınız Git Kurulumu İçin Beklemeye Alındı!${reset}"
sleep 2
clear
#READY FOR RUN :D


echo "${yellow}TÜM AYARLAMALAR YAPILDI. PROGRAM ÇALIŞTIRILIYOR...${reset}"
sleep 2
clear
bash parGnome.sh #run main file


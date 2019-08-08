#!/bin/bash
echo Progremci Debian AutoSetup™
sleep 2
clear
echo Kurulum Hazırlanıyor...
sleep 1
echo Kurulum Başlıyor... Lütfen Terminalden Ayrılmayınız!
sleep 2
clear
echo Kurulum Başladı! 
sleep 1
clear
echo ---------------------------------------
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install snapd
sudo apt --fix-broken install
echo ---------------------------------------
sleep 1
echo Ruby Kurulacak...
sleep 3
sudo apt-get install ruby
sudo apt-get install gem
echo --------------------------------------
sleep 1
echo Spotify Kurulacak...
sleep 3
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client
echo --------------------------------------
sleep 1
echo Git Kurulacak...
sleep 3
sudo apt-get install git
echo --------------------------------------
sleep 1
echo Visual Studio Code Kurulacak...
sleep 3
cd /media/pardus/TUX/Setups/deb
sudo dpkg -i code_1.36.1-1562627527_amd64.deb
echo --------------------------------------
sleep 1
echo Discord Kurulacak...
sleep 3
sudo snap install discord
sudo dpkg -i discord-0.0.9.deb
sudo apt --fix-broken install
sudo apt-get update
sudo apt-get upgrade
echo --------------------------------------
sleep 1
echo Neofetch Kurulacak...
sleep 3
sudo apt-get install neofetch
echo --------------------------------------
sleep 1
echo Telegram Ev Dizinine Alınıyor...
cp -r /media/pardus/TUX/Setups/tar/tsetup.1.6.7.tar.xz /home/pardus/
cd ~
tar -xf tsetup.1.6.7.tar.xz
cd ~
rm tsetup.1.6.7.tar.xz
echo Telegram Başarıyla Alındı!
echo --------------------------------------
sleep 1
echo Çöpler Dışarı Atılıyor...
sleep 3
sudo apt-get autoremove
sudo apt-get clean
clear
echo --------------------------------------
sleep 1
echo KURULUM TAMAMLANDI PROGREMCI!
sleep 2
clear
echo progremci.com
sleep 2
clear
echo -------------------------------------- 
neofetch
sleep 5
echo --------------------------------------
exit

#! /bin/bash


# IP Address

printf "\e[1;91m%-6s\e[m \e[1;31m%-6s\e[m \e[1;32m%-6s\e[m \e[1;33m%-6s\e[m \e[1;34m%-6s\e[m \e[1;35m%-6s\e[m \e[1;36m%-6s\e[m \e[1;94m%-6s\e[m \e[1;38m%-6s\e[m \e[1;90m%-6s\e[m %-20s%-20s%-20s%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n"  "UPDATE & UPGRADE: 1 ||" "POWEROFF PC: 2 ||" "RESTART PC: 3 ||" "RESTART PRINTER SERVER: 4 ||" "EPSON PRINTER INSTALL: 5 ||" "HP PRINTER INSTALL: 6 ||" "SHARE FOLDER REQUIRMENT: 7 ||" "BLOCK SOCIAL MEDIA: 8 ||" "CHROMIUN BROWER INSTALL: 9 ||" "REMOVE DEFAULT APP: 10 ||"

echo "Exit : ctrl + c"

printf '\e[1;95m%-6s\e[m' "Enter Selected number: "


#\e[1;91m%-6s\e[m

#echo $0

read UserData


case $UserData in
1 )
  # APT Update & Upgrade as well as Autoremove
  sudo apt update
  sudo apt upgrade -y
  sudo apt autoremove -y
  sudo $0
  ;;
2 )
  # Shutdown PC
  poweroff
  sudo $0
  ;;
3 )
  # Restart PC
  sudo shutdown now -r
  sudo $0
  ;;
4 )
  # Restart Printer Server
  sudo systemctl restart cups.service
  sudo $0
  ;;
5 )
  
  #EPSON M200 & M2140 Printer
  #* EPSON M100 M105 M200 M205
  wget -O ./M200.deb  http://download.ebz.epson.net/dsc/f/01/00/02/09/08/f14ac48ce7e19d8c077153dfe9f496cf0b2a1486/epson-inkjet-printer-201215w_1.0.0-1lsb3.2_amd64.deb

  sudo dpkg -i ./M200.deb

  #* EPSON M2140 and other
  wget -O ./M2140.deb  https://download3.ebz.epson.net/dsc/f/03/00/13/52/26/e80dbd04d591ad7968e3e31bbfab92f48142d5dd/epson-inkjet-printer-escpr2_1.1.48-1lsb3.2_amd64.deb
  sudo dpkg -i ./M2140.deb

  #* EPSON SCANER M2140 and other
  wget -O ./SCANNER.deb https://download3.ebz.epson.net/dsc/f/03/00/13/52/26/9bbb00470be613a6a5f58253043051d166d15196/epson-inkjet-printer-escpr2_1.1.48-1lsb3.2_i386.deb
  sudo dpkg -i ./SCANNER.deb
  sudo $0
  ;;
6 )
  # HP Printer 
  sudo apt install hplip-gui
  sudo $0
  ;;  
7 )
  # Share Printer & File Requirment
  sudo apt install samba smbclient python3-smbc
  sudo $0
  ;;
8 )
  # Block Social Media & Online Shopping
  sudo chmod 777 /etc/hosts
  sudo echo "127.0.0.1  www.google.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.facebook.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.instagram.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.twitter.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.youtube.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.amazon.in" >> /etc/hosts
  sudo echo "127.0.0.1  www.flipkart.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.myntra.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.bigbasket.com" >> /etc/hosts
  sudo echo "127.0.0.1  www.jiomart.com" >> /etc/hosts
  sudo chmod 644 /etc/hosts
  sudo $0
  ;;
9 )
  # Chromium Browser
  sudo apt install -y chromium-browser
  sudo $0
  ;;
10 )
  # UBUNTU DEAFULT APP
 sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku rhythmbox shotwell thunderbird transmission usb-creator-gtk
 sudo $0
  ;;
* )
  # UBUNTU DEAFULT APP
  echo "WRONG ENTRY"
  sudo $0
  ;;
esac









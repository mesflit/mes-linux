#!/data/data/com.termux/files/usr/bin/bash
rm -rf $PREFIX/etc/proot-distro/raspberrypi.sh;
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/raspberrypi.sh;


mv raspberrypi.sh $PREFIX/etc/proot-distro/raspberrypi.sh;
proot-distro install kali;
clear; echo "Added Raspberry Pi

'proot-distro login raspberrypi'
You can start by typing

#!/data/data/com.termux/files/usr/bin/bash
rm -rf $PREFIX/etc/proot-distro/gentoo.sh;
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/gentoo.sh;

mv gentoo.sh $PREFIX/etc/proot-distro/gentoo.sh;
proot-distro install gentoo;
clear; 
echo " Added Gentoo

'proot-distro login gentoo'
You can start by typing "

#!/data/data/com.termux/files/usr/bin/bash
rm -rf $PREFIX/etc/proot-distro/voidglibc.sh;
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/voidglibc.sh;

mv gentoo.sh $PREFIX/etc/proot-distro/voidglibc.sh;
proot-distro install voidglibc;
clear; 
echo " Added Void Glibc

'proot-distro login voidglibc'
You can start by typing "

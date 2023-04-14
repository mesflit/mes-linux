#!/data/data/com.termux/files/usr/bin/bash
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/gentoo.sh;

mv gentoo.sh $PREFIX/etc/proot-distro/gentoo.sh;
clear; echo "Added Gentoo
'proot-distro install gentoo'
you can download by typing
'proot-distro login gentoo'
You can start by typing

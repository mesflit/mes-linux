#!/data/data/com.termux/files/usr/bin/bash
rm -rf $PREFIX/etc/proot-distro/kali.sh;
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/kali.sh;


mv kali.sh $PREFIX/etc/proot-distro/kali.sh;
proot-distro install kali;
clear; echo "Added Kali Linux

'proot-distro login kali'
You can start by typing
NOTE: After booting kali linux on first download type this command 'rm -rf /var/lib/dpkg/info/postgresql* && dpkg --configure -a' you won't get an error";

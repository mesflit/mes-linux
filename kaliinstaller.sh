#!/data/data/com.termux/files/usr/bin/bash
apt update;
 apt install proot-distro;
 wget https://raw.githubusercontent.com/mesflit/proot-distro/main/kali.sh -O $PREFIX/etc/proot-distro/;
chmod +x $PREFIX/etc/proot-distro/kali.sh
clear; echo "Added Kali Linux
'proot-distro install kali'
you can download by typing
'proot-distro login kali'
You can start by typing
NOTE: After booting kali linux on first download type this command 'rm -rf /var/lib/dpkg/info/postgresql* && dpkg --configure -a' you won't get an error";

#!/bin/bash
#
cumbia='\e[40;38;5;82m' #COLOR
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │                APUNTESPLOX               │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install lsb-release nscd curl php5 php5-mysql php5-cli php5-curl unzip unrar -y && apt-get install php5-mcrypt -y &&  php5enmod mcrypt
service apache2 restart
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part7.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part6.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part5.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part4.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part3.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part2.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part1.rar
unrar x DLM.part1.rar
#
cp -R /home/ubuntu/DLMc/DLM.rar  /var/www/html/ && cd /var/www/html && unrar x DLM.rar
cp /var/www/html/DLM/downloads/iptv_panel_pro.zip /tmp/
chmod a+x /tmp/iptv_panel_pro.zip
cd /var/www/html/DLM/downloads/
unzip /var/www/html/DLM/downloads/install_iptv_pro.zip 
cp install_iptv_pro.php /root/
cd /root/ && chmod a+x /root/install_iptv_pro.php
#
#
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │        LICENCIA: z.B 3d5b0f8e468c332     │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
#
php install_iptv_pro.php
#
echo " "
echo "####################################################################################"
echo " "
echo "                     La licencia ya está instalada!                      "
echo " "
echo "####################################################################################"
echo " "
#

echo 1 > /proc/sys/net/ipv4/ip_forward
#
/sbin/iptables -t nat -I OUTPUT --dest 149.202.206.51/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 123.103.255.80/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 62.210.244.112/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.0/28 -j DNAT --to-destination 127.0.0.1
#
apt-get install iptables-persistent
#
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │    xtreamcode 1.0.60 por APUNTESPLOX     │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
echo -e "${cumbia} |\/\/\/|  \e[0m"
echo -e "${cumbia} |      |  \e[0m"
echo -e "${cumbia} |      |  \e[0m"
echo -e "${cumbia} | (o)(o)  \e[0m"
echo -e "${cumbia} C      _) Instalacion exitosa \e[0m"
echo -e "${cumbia}  | ,___|  dijo el bar sinson \e[0m"
echo -e "${cumbia}  |   /    \e[0m"
echo -e "${cumbia} /____\    \e[0m"
echo -e "${cumbia}/      \   \e[0m"
echo " "
echo " "
      read -p "REINICAR AHORA (y/n)?" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
      reboot
      fi

#!/bin/bash
#
verde='\e[40;38;5;82m' #COLOR VERDE
rojito='\e[31;1m' 
echo " "
echo -e "${verde} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${rojito} │                APUNTESPLOX               │ \e[0m"
echo -e "${rojito} └──────────────────────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get upgrade -y
apt-get install unzip unrar apache2 -y
#
cd
mkdir instalacionxtreamcode/
cd instalacionxtreamcode/
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/carpetasahtml.part1.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/carpetasahtml.part2.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/install_iptv_pro.php
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/iptv_panel_pro.zip
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/xtreamcodes_pro_panel
# COPIAR A /TMP/
cp iptv_panel_pro.zip /tmp/ && chmod a+x /tmp/iptv_panel_pro.zip
#
unrar x carpetasahtml.part1.rar
cd 1.0.60/ && cp -r downloads/ /var/www/html && cp -r licences/ /var/www/html && cp -r modules/ /var/www/html
#
apt-get install lsb-release nscd curl php5 php5-mysql php5-cli php5-curl -y && apt-get install php5-mcrypt -y &&  php5enmod mcrypt
service apache2 restart
#
echo " "
echo -e "${verde} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${verde} │            LICENCIA: licenca1            │ \e[0m"
echo -e "${verde} └──────────────────────────────────────────┘ \e[0m"
echo " "
#
cd
cd instalacionxtreamcode/
php install_iptv_pro.php
#
echo " "
echo "##########################################################################"
echo " "
echo "                     La licencia ya está instalada!                      "
echo " "
echo "##########################################################################"
echo " "
#
#
echo 1 > /proc/sys/net/ipv4/ip_forward
sudo sysctl -w net.ipv4.ip_forward=1
sudo sysctl -p /etc/sysctl.conf
sysctl net.ipv4.ip_forward
#
#
echo " "
echo "Blocking IP FORWARD Tables"
echo " "
/sbin/iptables -t nat -I OUTPUT --dest 149.202.206.51/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 62.210.244.112/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest xtream-codes.com/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 119.249.54.71/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 38.30.65.218/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 221.194.47.224/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 218.65.30.38/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 116.31.116.34/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 91.197.232.109/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 121.18.238.104/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 221.194.44.195/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 123.103.255.80/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.0/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.7/28 -j DNAT --to-destination 127.0.0.1
echo " "
echo " Blocking SSH Connection"
echo " "
sudo /sbin/iptables -I INPUT -s 119.249.54.71 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 119.249.54.71 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 38.30.65.218 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.47.224 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 218.65.30.38 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 116.31.116.34 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 91.197.232.109 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 121.18.238.104 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.44.195 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 149.202.206.51 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.80 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.87 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 62.210.244.112 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.0 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s xtream-codes.com -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.20.86.174 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 149.202.206.51 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 54.208.22.70 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 51.206.202.149 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.18.44.225 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 46.4.28.40 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 108.162.196.124 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 91.228.53.61 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.17 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.2 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.3 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.4 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.5 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.6 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.8 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.9 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.10 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.11 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.12 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.13 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.14 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.15 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.16 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.17 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.18 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.19 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.20 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.21 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.22 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.23 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.24 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 202.12.28.140 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 192.5.4.1 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 199.212.0.53 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 200.3.13.14 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 193.0.9.5 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.28.18.95 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables-save
echo " "
echo "Blocking FTP Connection"
echo " "
sudo /sbin/iptables -I INPUT -s 119.249.54.71 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 38.30.65.218 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.47.224 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 218.65.30.38 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 116.31.116.34 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 91.197.232.109 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 121.18.238.104 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.44.195 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 149.202.206.51 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.80 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.87 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 62.210.244.112 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.0 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s xtream-codes.com -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 104.20.86.174 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 54.208.22.70 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 51.206.202.149 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 104.18.44.225 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 46.4.28.40 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 108.162.196.124 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 91.228.53.61 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.17 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.2  -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.3 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.4 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.5 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.6 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.7 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.8 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.9 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.10 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.11 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.12 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.13 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.14 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.15 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.16 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.17 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.18 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.19 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.20 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.21 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.22 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.23 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.24 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 202.12.28.140 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 192.5.4.1 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 199.212.0.53 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 200.3.13.14 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 193.0.9.5 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 104.28.18.95 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport 21 -j REJECT
sudo /sbin/iptables-save
echo " "
echo "Blocking TUNTAP"
echo " "
sudo ip tuntap add tun0 mode tun
sudo sudo ip addr add 119.249.54.71/28 dev tun0
sudo ip addr add 38.30.65.218/28 dev tun0
sudo ip addr add 221.194.47.224/28 dev tun0
sudo ip addr add 218.65.30.38/28 dev tun0
sudo ip addr add 116.31.116.34/28 dev tun0
sudo ip addr add 91.197.232.109/28 dev tun0
sudo ip addr add 121.18.238.104/28 dev tun0
sudo ip addr add 221.194.44.195/28 dev tun0
sudo ip addr add 123.103.255.80/28 dev tun0
sudo ip addr add 185.73.239.0/28 dev tun0
sudo ip addr add 185.73.239.7/28 dev tun0
sudo ip addr add 119.249.54.71 dev tun0
sudo ip addr add 119.249.54.71 dev tun0
sudo ip addr add 38.30.65.218 dev tun0
sudo ip addr add 221.194.47.224 dev tun0
sudo ip addr add 218.65.30.38 dev tun0
sudo ip addr add 116.31.116.34 dev tun0
sudo ip addr add 91.197.232.109 dev tun0
sudo ip addr add 121.18.238.104 dev tun0
sudo ip addr add 221.194.44.195 dev tun0
sudo ip addr add 149.202.206.51 dev tun0
sudo ip addr add 123.103.255.80 dev tun0
sudo ip addr add 123.103.255.87 dev tun0
sudo ip addr add 62.210.244.112 dev tun0
sudo ip addr add 185.73.239.0 dev tun0
sudo ip addr add 185.73.239.7 dev tun0
sudo ip addr add 104.20.86.174 dev tun0
sudo ip addr add 149.202.206.51 dev tun0
sudo ip addr add 54.208.22.70 dev tun0
sudo ip addr add 51.206.202.149 dev tun0
sudo ip addr add 185.73.239.7 dev tun0
sudo ip addr add 94.23.120.89 dev tun0
sudo ip addr add 104.18.44.225 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 46.4.28.40 dev tun0
sudo ip addr add 108.162.196.124 dev tun0
sudo ip addr add 91.228.53.61 dev tun0
sudo ip addr add 185.73.239.17 dev tun0
sudo ip addr add 185.73.236.54 dev tun0
sudo ip addr add 185.49.91.2 dev tun0
sudo ip addr add 185.49.91.3 dev tun0
sudo ip addr add 185.49.91.4 dev tun0
sudo ip addr add 185.49.91.5 dev tun0
sudo ip addr add 185.49.91.6 dev tun0
sudo ip addr add 185.49.91.7 dev tun0
sudo ip addr add 185.49.91.8 dev tun0
sudo ip addr add 185.49.91.9 dev tun0
sudo ip addr add 185.49.91.10 dev tun0
sudo ip addr add 185.49.91.11 dev tun0
sudo ip addr add 185.49.91.12 dev tun0
sudo ip addr add 185.49.91.13 dev tun0
sudo ip addr add 185.49.91.14 dev tun0
sudo ip addr add 185.49.91.15 dev tun0
sudo ip addr add 185.49.91.16 dev tun0
sudo ip addr add 185.49.91.17 dev tun0
sudo ip addr add 185.49.91.18 dev tun0
sudo ip addr add 185.49.91.19 dev tun0
sudo ip addr add 185.49.91.20 dev tun0
sudo ip addr add 185.49.91.21 dev tun0
sudo ip addr add 185.49.91.22 dev tun0
sudo ip addr add 185.49.91.23 dev tun0
sudo ip addr add 185.49.91.24 dev tun0
sudo ip addr add 202.12.28.140 dev tun0
sudo ip addr add 192.5.4.1 dev tun0
sudo ip addr add 199.212.0.53 dev tun0
sudo ip addr add 200.3.13.14 dev tun0
sudo ip addr add 193.0.9.5 dev tun0
sudo ip addr add 185.73.236.54 dev tun0
sudo ip addr add 104.28.18.95 dev tun0
sudo ip addr add 94.23.120.89 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 119.249.54.71 dev tun0
sudo ip addr add 38.30.65.218 dev tun0
sudo ip addr add 221.194.47.224 dev tun0
sudo ip addr add 218.65.30.38 dev tun0
sudo ip addr add 116.31.116.34 dev tun0
sudo ip addr add 91.197.232.109 dev tun0
sudo ip addr add 121.18.238.104 dev tun0
sudo ip addr add 221.194.44.195 dev tun0
sudo ip addr add 149.202.206.51 dev tun0
sudo ip addr add 123.103.255.80 dev tun0
sudo ip addr add 123.103.255.87 dev tun0
sudo ip addr add 62.210.244.112 dev tun0
sudo ip addr add 185.73.239.0 dev tun0
sudo ip addr add 185.73.239.7 dev tun0
sudo ip addr add 104.20.86.174 dev tun0
sudo ip addr add 54.208.22.70 dev tun0
sudo ip addr add 51.206.202.149 dev tun0
sudo ip addr add 185.73.239.7 dev tun0
sudo ip addr add 94.23.120.89 dev tun0
sudo ip addr add 104.18.44.225 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 46.4.28.40 dev tun0
sudo ip addr add 108.162.196.124 dev tun0
sudo ip addr add 91.228.53.61 dev tun0
sudo ip addr add 185.73.239.17 dev tun0
sudo ip addr add 185.73.236.54 dev tun0
sudo ip addr add 185.49.91.2  dev tun0
sudo ip addr add 185.49.91.3 dev tun0
sudo ip addr add 185.49.91.4 dev tun0
sudo ip addr add 185.49.91.5 dev tun0
sudo ip addr add 185.49.91.6 dev tun0
sudo ip addr add 185.49.91.7 dev tun0
sudo ip addr add 185.49.91.8 dev tun0
sudo ip addr add 185.49.91.9 dev tun0
sudo ip addr add 185.49.91.10 dev tun0
sudo ip addr add 185.49.91.11 dev tun0
sudo ip addr add 185.49.91.12 dev tun0
sudo ip addr add 185.49.91.13 dev tun0
sudo ip addr add 185.49.91.14 dev tun0
sudo ip addr add 185.49.91.15 dev tun0
sudo ip addr add 185.49.91.16 dev tun0
sudo ip addr add 185.49.91.17 dev tun0
sudo ip addr add 185.49.91.18 dev tun0
sudo ip addr add 185.49.91.19 dev tun0
sudo ip addr add 185.49.91.20 dev tun0
sudo ip addr add 185.49.91.21 dev tun0
sudo ip addr add 185.49.91.22 dev tun0
sudo ip addr add 185.49.91.23 dev tun0
sudo ip addr add 185.49.91.24 dev tun0
sudo ip addr add 202.12.28.140 dev tun0
sudo ip addr add 192.5.4.1 dev tun0
sudo ip addr add 199.212.0.53 dev tun0
sudo ip addr add 200.3.13.14 dev tun0
sudo ip addr add 193.0.9.5 dev tun0
sudo ip addr add 185.73.236.54 dev tun0
sudo ip addr add 104.28.18.95 dev tun0
sudo ip addr add 94.23.120.89 dev tun0
sudo ip addr add 37.59.239.66 dev tun0
sudo ip addr add 149.202.206.48 dev tun0
sudo ip addr add 185.73.239.7 dev tun0
sudo ip addr add 149.202.206.51 dev tun0
sudo ip addr add 62.210.244.122 dev tun0
sudo ip addr add 123.103.255.87 dev tun0
sudo ip addr add 185.135.158.190 dev tun0
sudo ip addr add 116.31.116.34 dev tun0
sudo ip addr add 119.249.54.71 dev tun0
sudo ip addr add 38.30.65.218 dev tun0
sudo ip addr add 221.194.47.224 dev tun0
sudo ip addr add 121.18.238.104 dev tun0
sudo ip addr add 221.194.44.195 dev tun0
sudo ip addr add 218.65.30.38 dev tun0
sudo ip addr add 91.197.232.109 dev tun0
sudo ip addr add 185.73.239.0 dev tun0
sudo ip addr add 62.210.244.122 dev tun0
sudo ip addr add 123.103.255.80 dev tun0
sudo ip addr add 104.20.86.174 dev tun0
#
apt-get install iptables-persistent
#
cd
cd instalacionxtreamcode/
cp xtreamcodes_pro_panel /etc/init.d/
cd /etc/init.d/
chmod 777 xtreamcodes_pro_panel
#
echo " "
echo -e "${verde} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${verde} │    xtreamcode 1.0.60 por APUNTESPLOX     │ \e[0m"
echo -e "${verde} └──────────────────────────────────────────┘ \e[0m"
echo " "
echo -e "${verde} |\/\/\/|  \e[0m"
echo -e "${verde} |      |  \e[0m"
echo -e "${verde} |      |  \e[0m"
echo -e "${verde} | (o)(o)  \e[0m"
echo -e "${verde} C      _) Instalacion exitosa\e[0m"
echo -e "${verde}  | ,___|  dijo el bar sinson\e[0m"
echo -e "${verde}  |   /    \e[0m"
echo -e "${verde} /____\    \e[0m"
echo -e "${verde}/      \   \e[0m"
echo " "
echo " "
      read -p "REINICAR AHORA (y/n)?" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ] || [ "$CONT" == "s" ] || [ "$CONT" == "S" ]; then
      reboot
      fi

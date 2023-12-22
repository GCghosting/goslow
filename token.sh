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

echo : please input your refreshToken first
sleep 1
clear 

read -p "RefreshToken: " token

# Login
curl --request POST \
  --url https://securetoken.googleapis.com/v1/token?key=AIzaSyAY_xgPxtljMmsFPn8NFDyN7S-eeqzI4Io \
  --header 'Content-Type: application/json' \
  --header 'Host: securetoken.googleapis.com' \
  --data '{"grantType":"refresh_token","refreshToken": "'$token'" }'
echo ""
echo ""
echo "===================================="
echo "Please Copy your access token only"
echo "===================================="

echo "Please Wait..."

sleep 20
clear 
celcom
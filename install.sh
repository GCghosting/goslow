#!/bin/bash
echo ''
clear
echo ''
echo '       ____    _    ____ ____ _____ ____  _   _ __  __  '
echo '      / ___|  / \  / ___/ ___|_   _|  _ \| | | |  \/  | '
echo '     | |  _  / _ \ \___ \___ \ | | | |_) | | | | |\/| | '
echo '     | |_| |/ ___ \ ___) |__) || | |  _ <| |_| | |  | | '
echo '      \____/_/   \_\____/____/ |_| |_| \_\\___/|_|  |_| '
echo ''
echo '                  Telegram Gasstrum @gasstrum                  '
echo ''
echo ''
echo '                       Tunggu 5 Saat!                       '
echo ' .......................................................... '
sleep 5
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
IZIN=$( curl https://raw.githubusercontent.com/dcphantom/phmax/main/spam | grep $MYIP )
if [ $MYIP = $IZIN ]; then
clear
echo -e "${green}Tahniah! Anda Dibenarkan menggunakan Gasstrum...${NC}"
sleep 5
else
clear
echo ""
echo '                            ...                               '
echo '        Anda Tidak Dibenarkan Menggunakan Script ini!         '
echo '                            ...                               '
echo '    Hubungi Saya di Telegram Untuk Mendapatkan Kebenaran!     '
echo '                        t.me/gasstrum     '
sleep 20
exit 0
fi
echo '============================================='
echo '          Sila Tunggu sebentar '
echo 'Process Update & Upgrade Sedang Dijalankan '
echo '============================================='
sleep 2
apt update && apt upgrade -y
clear
echo '============================================='
echo '      Process Update&Upgrade Selesai '
echo '============================================='
sleep 2
clear
echo '============================================='
echo '        Process Seterusnya Sila Tunggu '
echo '============================================='
sleep 2

# download script
cd /usr/bin
wget -O celcom "https://raw.githubusercontent.com/GCghosting/goslow/main/celcom.sh"
wget -O 10 "https://raw.githubusercontent.com/GCghosting/goslow/main/10.sh"
wget -O 5 "https://raw.githubusercontent.com/GCghosting/goslow/main/5.sh"
wget -O ussge "https://raw.githubusercontent.com/GCghosting/goslow/main/usage.sh"
wget -O history "https://raw.githubusercontent.com/GCghosting/goslow/main/history.sh"
wget -O token "https://raw.githubusercontent.com/GCghosting/goslow/main/token.sh"

chmod +x 10
chmod +x 5
chmod +x usage
chmod +x history
chmod +x token
chmod +x celcom
sleep 3

echo "Finish"
sleep 2

celcom
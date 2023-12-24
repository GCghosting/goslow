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
        clear
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
wget -O 10gb "https://raw.githubusercontent.com/GCghosting/goslow/main/10gb.sh"
wget -O 5gb "https://raw.githubusercontent.com/GCghosting/goslow/main/5gb.sh"
wget -O usage "https://raw.githubusercontent.com/GCghosting/goslow/main/usage.sh"
wget -O history "https://raw.githubusercontent.com/GCghosting/goslow/main/history.sh"
wget -O token "https://raw.githubusercontent.com/GCghosting/goslow/main/token.sh"
wget -O freebies "https://raw.githubusercontent.com/GCghosting/goslow/main/freebies.sh"

chmod +x 10gb
chmod +x 5gb
chmod +x usage
chmod +x history
chmod +x token
chmod +x celcom
chmod +x freebies
sleep 3

echo "Finish"
sleep 2

celcom
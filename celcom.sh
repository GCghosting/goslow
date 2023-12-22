#!/bin/bash 

echo "please wait ...."
sleep 1
clear
echo -e "\e[94m ============================================================ "
echo -e "\e[94m                     Autoscript By Secretbipion             "
echo -e "\e[94m ============================================================  "
echo -e "\e[92m   ____  _____ ____ ____  _____ _____ ____     ___   ___ _____     "
echo -e "\e[92m / ___|| ____/ ___|  _ \| ____|_   _/ ___|   / _ \ / _ \___  |     "
echo -e "\e[92m \___ \|  _|| |   | |_) |  _|   | | \___ \  | | | | | | | / /     "
echo -e "\e[92m  ___) | |__| |___|  _ <| |___  | |  ___) | | |_| | |_| |/ /      "
echo -e "\e[92m |____/|_____\____|_| \_\_____| |_| |____/   \___/ \___//_/    "   
echo -e "\e[0m                                                       "
echo -e "\e[94m ============================================================ "
echo -e "\e[94m                      SPAM LANGGANAN CELCOM    "
echo -e "\e[94m ============================================================ "
echo -e "\e[0m                                                               "
echo -e ""
echo -e "\e[1;31m [1]\e[0m \e[1;32m: Get AUTHORIZATION\e[0m" 
echo -e "\e[1;31m [2]\e[0m \e[1;32m: Subscribe Data 10GB\e[0m"
echo -e "\e[1;31m [3]\e[0m \e[1;32m: Subscribe Data 5GB\e[0m"
echo -e "\e[1;31m [4]\e[0m \e[1;32m: Check Usage\e[0m"
echo -e "\e[1;31m [5]\e[0m \e[1;32m: Check History\e[0m"

read -p "        Select From Options [1-5 or x]: " celcom
echo -e ""
case $celcom in
1)
token
;;
2)
10gb
;;
3)
5gb
;;
4)
usage
;;
5)
history
;;
x)
menu
;;
*)
echo " SILA MASUKKAN NUMBER YANG BETUL!!"
;;
esac
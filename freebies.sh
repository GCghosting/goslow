#!/bin/bash

clear
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
clear
fi 

echo "please wait ...."
sleep 1
clear

echo -e "\e[1;31m* [1]\e[0m \e[1;32m: Pump Freebies whatsapp[AutoRenew]\e[0m"
echo -e "\e[1;31m* [2]\e[0m \e[1;32m: Pump Freebies Youtube[AutoRenew]\e[0m"
echo -e "\e[1;31m* [3]\e[0m \e[1;32m: Pump Freebies Facebook[AutoRenew]\e[0m"
echo -e "\e[1;31m* [4]\e[0m \e[1;32m: Pump Freebies Instagram[AutoRenew]\e[0m"
echo -e "\e[1;31m* [0]\e[0m \e[1;32m: Back T0 Menu\e[0m"

read -p "Select From Options " pil


if [ $pil = "1" ]
then
echo "Input your Information"
sleep 1
clear 

num=1
read -p "Msisdn: " nombor
read -p "Authorization: " tac
read -p "limit: " limit

while [ $num -le $limit ]
do

curl --request POST \
  --url 'https://apicl3.celcom.com.my/plans-and-add-ons-mgmt/freebies/active?lang=en' \
  --header 'Accept: application/json' \
  --header 'msisdn: '$nombor \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \
  --data '{
    "msisdn": "'$nombor'",
    "freebieProductId": "40946"
}' 

sleep 6
   ((num++))
done
sleep 1
clear
celcom

elif [ $pil = "2" ]
then
 echo "Input your Information"
sleep 1
clear 

num=1
read -p "Msisdn: " nombor
read -p "Authorization: " tac
read -p "limit: " limit

while [ $num -le $limit ]
do

curl --request POST \
  --url 'https://apicl3.celcom.com.my/plans-and-add-ons-mgmt/freebies/active?lang=en' \
  --header 'Accept: application/json' \
  --header 'msisdn: '$nombor \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \
  --data '{
    "msisdn": "'$nombor'",
    "freebieProductId": "40945"
}' 

sleep 6
   ((num++))
done
sleep 1
clear
celcom

elif [ $pil = "3" ]
then
 echo "Input your Information"
sleep 1
clear 

num=1
read -p "Msisdn: " nombor
read -p "Authorization: " tac
read -p "limit: " limit

while [ $num -le $limit ]
do

curl --request POST \
  --url 'https://apicl3.celcom.com.my/plans-and-add-ons-mgmt/freebies/active?lang=en' \
  --header 'Accept: application/json' \
  --header 'msisdn: '$nombor \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \
  --data '{
    "msisdn": "'$nombor'",
    "freebieProductId": "40943"
}' 

sleep 6
   ((num++))
done
sleep 1
clear
celcom

elif [ $pil = "4" ]
then
 echo "Input your Information"
sleep 1
clear 

num=1
read -p "Msisdn: " nombor
read -p "Authorization: " tac
read -p "limit: " limit

while [ $num -le $limit ]
do

curl --request POST \
  --url 'https://apicl3.celcom.com.my/plans-and-add-ons-mgmt/freebies/active?lang=en' \
  --header 'Accept: application/json' \
  --header 'msisdn: '$nombor \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \
  --data '{
    "msisdn": "'$nombor'",
    "freebieProductId": "40944"
}' 

sleep 6
   ((num++))
done
sleep 1
clear
celcom

elif [ $pil = "0" ]
then

bash celcom.sh

else
   echo "Sila masukkan nombor yang Betul"
   sleep 2
   clear
   celcom

fi
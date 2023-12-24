#!/bin/bash

clear
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
clear
fi

   read -p "Input Authorization: " tac

curl --request GET \
  --url https://apicl3.celcom.com.my/subscriber-usage-info/v2/local? \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Host: apicl3.celcom.com.my' \
  --header 'Authorization: '$tac \
  --header 'x-dynatrace: MT_3_14_1938539898_77-0_e9ba6289-2990-4491-bb2c-bc8c2d6c256b_0_8362_1181' \

sleep 20
clear
celcom
#!/bin/bash

clear
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
clear
fi 

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
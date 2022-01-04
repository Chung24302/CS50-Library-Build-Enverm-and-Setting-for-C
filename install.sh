#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install -y make clang gcc g++

#echo "Do you want install cs50-env? (y/n): "
read -p "Do you want install cs50-env? (y/n): " ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ] || [ "$ans" = "yes" ] || [ "$ans" = "Yes" ] || [ "$ans" = "YES" ] ;
then
    ./CS50_INSTALL.sh;
fi

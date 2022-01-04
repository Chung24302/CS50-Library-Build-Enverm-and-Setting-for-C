#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install -y make clang gcc g++
echo -e export CC="clang\n">> ~/.bashrc
echo -e export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow\n">> ~/.bashrc
echo -e export LDLIBS="-lcrypt -lcs50 -lm\n">> ~/.bashrc

#echo "Do you want install cs50-env? (y/n): "
read -p "Do you want install cs50-env? (y/n): " ans
if [ "$ans" = "y" || "$ans" = "Y" || "$ans" = "yes" || "$ans" = "Yes" || "$ans" = "YES"]
then
    ./CS50_INSTALL.sh
fi

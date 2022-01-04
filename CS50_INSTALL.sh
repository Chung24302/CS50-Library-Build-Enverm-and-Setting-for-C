#!bin/bash
git clone https://github.com/cs50/libcs50.git
cd libcs50/
sudo make install
echo -e export CC="clang\n">> ~/.bashrc
echo -e export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow\n">> ~/.bashrc
echo -e export LDLIBS="-lcrypt -lcs50 -lm\n">> ~/.bashrc

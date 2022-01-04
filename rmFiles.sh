#!/bin/bash
DIR=$(dirname $(readlink -f $0))
echo "This script will remove $DIR folder and everythings of under it."
echo "Make sure your files what you need will not in it."

read -p "Are you sure to delete? (y/n) : " ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ] || [ "$ans" = "yes" ] || [ "$ans" = "Yes" ] || [ "$ans" = "YES" ] ;
then
    echo "haha";
fi

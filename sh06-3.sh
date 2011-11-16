#!/bin/bash
#Program:
#	The program shows user's choice	
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input(Y/N):" yn

if [ "$yn" = "Y" ] || [ "$yn" = "y" ];then
	echo "OK,continue"
elif [ "$yn" = "N" ] || [ "$yn" = "n" ];then
	echo "Oh,interrupt!"
else
	echo "I don't know what your choice is"
fi

exit 0

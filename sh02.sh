#!/bin/bash
#Program:
#	User input first name and last name, programe outputs full name 
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname #提示用户输入
read -p "Please input your last name: " lastname #提示用户输入
echo "\nYour full name is:$firstname $lastname" #输出结果

exit 0

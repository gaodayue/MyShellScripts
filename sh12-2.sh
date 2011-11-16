#!/bin/bash
#Program:
#	Use function to repeat information.
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

printit(){
	echo -n "Your choice is " # 加-n可以不断行显示
}

case $1 in
"one")
	printit;echo $1 | tr 'a-z' 'A-Z' # 将参数做大小写转换
	;;
"two")
	printit;echo $1 | tr 'a-z' 'A-Z'
	;;
"three")
	printit;echo $1 | tr 'a-z' 'A-Z'
	;;
*)
	echo "Usage $0 {one|two|three}"
	;;
esac
exit 0

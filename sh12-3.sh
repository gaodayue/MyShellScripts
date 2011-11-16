#!/bin/bash
#Program:
#	Use function to repeat information.
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

printit(){
	echo "Your choice is $1 "
}

case $1 in
"one")
	printit "ONE"
	;;
"two")
	printit "TWO"
	;;
"three")
	printit "THREE"
	;;
*)
	echo "Usage $0 {one|two|three}"
	;;
esac
exit 0

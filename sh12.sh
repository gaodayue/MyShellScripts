#!/bin/bash
#Program:
#	This script only accepts the following parameter:one,two,three	
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
"one")
	echo "Your choice is ONE"
	;;
"two")
	echo "Your choice is TWO"
	;;
"three")
	echo "Your choice is THREE"
	;;
*)
	echo "Usage $0 {one|two|three}"
	;;
esac
exit 0

#!/bin/bash
#Program:
#	Using netstat and grep to detect WWW,SSH,FTP and MAIL services	
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.先输出一些告知信息
echo "Now, I will detect your Linux server's services"
echo "The www, ssh, ftp, and mail will be detect!\n"

# 2.开始测试工作
testing=$(netstat -tuln | grep ":80")
if [ -n "$testing" ];then
	echo "WWW is running in your system."
fi
testing=$(netstat -tuln | grep ":21")
if [ -n "$testing" ];then
	echo "FTP is running in your system."
fi
testing=$(netstat -tuln | grep ":22")
if [ -n "$testing" ];then
	echo "SSH is running in your system."
fi
testing=$(netstat -tuln | grep ":25")
if [ -n "$testing" ];then
	echo "MAIL is running in your system"
fi
exit 0

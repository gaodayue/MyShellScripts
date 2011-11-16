#!/bin/bash
#Program:
#	User input dir name, then print the permission of files	
#History:
#2011/10/23	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.得到目录名
until [ "$dir" != "" ]
do
	read -p "Please input a directory name:" dir
done
# 2.判断是否为目录
[ ! -d "$dir" ] && echo "$dir is not a directory!" && exit 1
# 3.遍历目录中的文件
for filename in $(ls $dir)
do
	fullname=$dir/$filename
	perm=""
	test -r $fullname && perm="$perm readable"
	test -w $fullname && perm="$perm writable"
	test -x $fullname && perm="$perm executable"
	echo "The file $fullname's permission is$perm"
done

exit 0

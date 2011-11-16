#!/bin/bash
#Program:
#	User input a filename, program checks the following:
#	1)exist?	2)file/dir?	3)file permissions
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.用户输入filename，并判断用户是否真的有输入字符串
echo "Please input a filename, I will check the file's type and permission\n\n"
read -p "Input a filename:" filename
test -z $filename && echo "You MUST input a filename!" && exit 0

# 2.判断文件是否存在，若不存在则显示信息并结束执行
test ! -e $filename && echo "The file '$filename' DO NOT exist" && exit 0

# 3.判读文件类型于属性
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

# 4. 输出结果
echo "The file '$filename' is a $filetype"
echo " AND the permissions are: $perm"
exit 0

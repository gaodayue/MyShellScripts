#!/bin/bash
#Program:
#	Program shows the effect of shift
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Total parameter number is ==>$#"
echo "Your whole parameter is '$@'"
shift # 进行第一次【一个变量的shift】
echo "Total parameter number is ==>$#"
echo "Your whole parameter is '$@'"
shift 3 # 进行第二次【三个变量的shift】 
echo "Total parameter number is ==>$#"
echo "Your whole parameter is '$@'"

exit 0
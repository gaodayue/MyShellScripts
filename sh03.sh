#!/bin/bash
#Program:
#	Program creates three files, which named by user's input
#	and date command
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.让使用者输入文件名，并取得fileuser这个变量
echo "I will use 'touch' command to create three files."
read -p "Please input your filename: " fileuser

# 2.为了避免使用者随意按Enter,利用变量功能分析档名是否有配置
filename=${fileuser:-"filename"} # 开始判断是否有配置档名

# 3.开始利用date命令来取得所需要的档名
date1=$(date --date='2 days ago' +%Y%m%d) # 前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d) # 前一天的日期
date3=$(date +%Y%m%d) # 今天的日期
file1=${filename}_${date1} 
file2=${filename}_${date2}
file3=${filename}_${date3}

# 4. 创建文件
touch $file1
touch $file2
touch $file3

exit 0

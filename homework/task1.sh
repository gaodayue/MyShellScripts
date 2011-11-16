#!/bin/bash
#Program:
#	Check if there specific string in specific file(s)/directory(s)
#	Then print the result include following information
#	1)if no match stirng, just print: Can not find match string in target files or directories
#	2)if matching string, print following information:
#	  1.file name which include matching string.
#	  2.line number of the file includes matching string.
#	  3.whole line content which include matching string.
#History:
#2011/10/23	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

search_file(){
#	cat $1 | while read line
#	do
#		
#	done
	# lazy approach using 'grep'.
	##################### To Be Improved here###################
	result=$(grep -n $pattern $1)
	[ -n "$result" ] && echo "Find in '$1':\n$result\n"
}

# MAIN procedure
# 1 handler_params
# 1.1 if no params, show the usage and exit
[ $# -lt 2 ] && echo "Usage:$0 [PATTERN] [FILE...]" && exit 0
# 1.2 save the pattern and shift
pattern=$1
shift
# 1.3 loop the file param
for p in $@
do
	# test if the file exists?
	test ! -e $p && echo "WARN: The filename '$p' DO NOT exist" && continue
	# test if we have read permission to it?
	test ! -r $p && echo "WARN: DO NOT have READ permission to '$p'" && continue
	# handle the file or directory
	if [ -f $p ];then
		search_file $p
	elif [ -d $p ];then
		# tranverse files in the directory
		for each in $(ls $p)
		do
			search_file $p/$each
		done
	else
		echo "WARN: '$p' is neither a regular file nor a directory!"
	fi
done

exit 0

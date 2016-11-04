#!/bin/bash

#Kevin McKinnon in the sole author of this work

read -p "Insert a list of words: " -a list

declare -a finalList

for i in $(seq 0 $((${#list[*]}-1)) ); do
	result=0
	length=${#list[$i]}
	for j in $(seq 1 $length ) ; do
		num=$(($length-1*j))
		if (( $j == 1 )) ; then 
			result=${list[$i]:$num:1}
		else
			result+=${list[$i]:$num:1}
		fi
	done
	finalList[$i]="$result"
done
echo "Output: ${finalList[*]}"


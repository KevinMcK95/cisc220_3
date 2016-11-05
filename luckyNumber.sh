#!/bin/bash
#Developed in cisc220

#Kevin McKinnon is the sole author of this work

luckyNum() {
num=$1
total=0

for i in $(seq 0 $((${#num}-1)) ) ; do
	int=${num:$i:1}
	total=$(($total+$int))
done

if (( $total == 7 )); then
	echo 0
elif (( $total >= 10 )); then
	echo $(luckyNum $total)
else
	echo 1
fi
}

for test in $(seq 1000 10000); do

	val=$(luckyNum $test)

	if (($val == 0)); then
		echo $test
	fi

done

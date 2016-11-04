#!/bin/bash

#Kevin McKinnon in the sole author of this work

read -p "Insert a list of words: " -a list

for i in $(seq 0 $((${#test[*]}-1)) ); do
	echo -n "$i "

done

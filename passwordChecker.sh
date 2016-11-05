#!/bin/bash
#Developed in cisc220

#Kevin McKinnon is the sole author of this work


read -p "Please enter your password: " -s pass

strength=0

case $pass in
*[\@\#\$\%\&\*\+\-\=]*) strength=$(($strength+1)) ;;
esac
if (( ${#pass} >= 8 )); then
	strength=$(($strength+1))
fi
case $pass in
*[0-9]*) strength=$(($strength+1)) ;;
esac

echo ""

if (( $strength == 3 )); then
	echo "Strong"
elif (( $strength == 2 )); then
	echo "Moderate"
elif (( $strength == 1 )) ; then
	echo "Weak"
else
	echo "Invalid password"
fi

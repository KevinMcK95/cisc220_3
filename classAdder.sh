#!/bin/bash
#Developed in cisc220

#Kevin McKinnon is the sole author

executables=( $(find . -type f -executable | grep -v .git/) ) #array of all executables (that aren't there due to cloning a github repository)

insert="#Developed in cisc220"
string="#!/bin/bash
#Developed in cisc220"

for i in $(seq 0 $((${#executables[*]}-1)) ); do
	name=${executables[$i]:2} #removes the "./" from the beginning of the name
	sedString="s|$string|$string\n$insert|"
	sed -i "$sedString" $name 
done

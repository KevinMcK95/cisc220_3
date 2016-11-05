#this is a test for classAdder.sh

#!/bin/bash
#Developed in cisc220

#Kevin McKinnon is the sole author

lsblk --noheadings --raw | grep part | sed s/"K"/" A"/ | sed s/"M"/" B"/ | sed s/"G"/" C"/ | sort -k5,5 -k4,4n | sed s/" A"/"K"/ | sed s/" B"/"M"/ | sed s/" C"/"G"/ | tail -n2

#!/bin/bash

for argu in $@
do
	echo $argu|grep "^[[:digit:]]*$" > /dev/null
	if [ $? -eq 0 ]
	then
		if [ $argu -gt 10 ]
		then
			echo "$argu"
		else
			echo "$argu is not a valid argument"
		fi
	else
		echo "Please enter  only digits and not letters"
		exit 1
	fi
done

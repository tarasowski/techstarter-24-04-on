#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please enter at leats one user to greet"
else
	for username in $@
	do
	echo $username | grep "^[A-Za-z]*$" > /dev/null
	if [ $? -eq 1 ]
	then
		echo "ERROR: Names must only contain letters"
		exit 2
	else
		echo "Hello $username"
	fi
	done
	exit 0
fi

#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please enter at least one arg to greet"
	exit 1
else
	# $@ <- beinhaltet alle args die wir eingeben
	# $@ <- diese werden als array/liste gespeichert
	# array/liste <- ist eine box in diese box werden 
	# strings oder numbers reingetan
	for username in $@
	do
		echo "Hello $username"
	done
	exit 0
fi

#!/bin/bash

# als arg1 soll der username eingegeben werden
# als arg2 soll die usergruppe eingeben werden
# und es soll geprüft werden ob es zwei args sind


echo "Die Anzahl der Arguments ist $#"

if [ 2 -eq $# ] #if then else
then
	username=$1
	group=$2
	echo "Das ist mein username: $username"
	echo "Das ist meine usergruppe: $group"
else
	echo "Bitte gebe nur zwei argument ein!"
fi

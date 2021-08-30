#!/bin/bash
if [ ! $# -eq 2 ]
then	
	if [ $# -lt 2 ] && [ -d $1 ]
	then
		echo "ERROR:Not enough parameters, text string not entered"
	elif [ $# -lt 2 ] && [ -n $1 ] 
	then
		echo "ERROR:Not enough parameters, path not specified"
	else
		echo "ERROR:Too many parameters"
	fi
	exit 1
fi

if [ ! -d $1  ]
then
	echo "ERROR: $1 not a directory"
	exit 1
fi

echo "The number of files are $(find "$1" -type f | wc -l) and the number of matching lines are $(grep -ior "$2" "$1" | wc -w)"

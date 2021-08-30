#!/bin/bash
if [ ! $# -eq 2 ]
then	
	if [ $# -lt 2 ] && [ -d $1 ]
	then
		echo "ERROR: Not enough parameters, text string not entered"
	elif [ $# -lt 2 ] && [ -n $1 ] 
	then
		echo "ERROR: Not enough parameters, path not specified"
	else
		echo "ERROR: Too many parameters"
	fi
	exit 1
fi

#if [ ! -f $1  ]
#then
	#echo "$1 not a file"
	#exit 1
#fi


echo $2 > $1

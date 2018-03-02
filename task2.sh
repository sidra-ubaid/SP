#!/bin/bash

echo $1
echo $2
filename1=$1
username1=$2
filename2=$3
username2=$4
set `ls -li $1`
owner=$5
echo " OWNER: " $owner
echo " GROUP: " $4
echo " PERMISSIONS: " $2
shift
echo " FILENAME: " $9
if [ $owner = $username1 ]
then 
echo "cheating 0"
else 
echo "cheating 1"
fi
if ( test ${#filename2} -gt 0 && test ${filename2} !=$username1)
then 
    	set `ls -li ${filename2[0]}`
	echo "OWNER: " $5
	echo "GROUP: " $4
	echo "PERMISSIONS: " $2
shift
echo "FILENAME: " $9
diff -c $filename1 $9

	if [ $? -eq 0 ]
	then
		echo "No cheating"
	else 
		echo "Cheating"
	fi
fi



 


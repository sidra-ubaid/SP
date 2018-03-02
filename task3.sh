#!/bin/bash

UNIX=( 'Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora')
echo "display full array :" 
	echo ${UNIX[*]}
echo "display length of array :"
	echo ${#UNIX[*]}
echo "display length of index 2 :"
	echo ${#UNIX[2]}
echo "extract 2 elements starting from index 3: "
	echo ${UNIX[@]:3:2}
echo "search Ubuntu and replace temporary with SCOunix: "
	echo ${UNIX[@]/"Ubuntu"/"SCOUnix"}
echo "adding 2 elements in existing array: "
	 temp=( $UNIX[*] "AIX" "LOL")
	echo ${temp[*]}
echo "removing 3rd element: " 
	unset UNIX[2]
echo "copy array: " 
	 LINUX=(${UNIX[*]})
	echo ${LINUX[*]}
echo "concatenate array: "
	 BASH=(${UNIX[*]} ${LINUX[*]})
	echo ${BASH[*]}
echo "remove LINUX UNIX: "
	unset UNIX[*]
	unset LINUX[*]
echo "now these arrays will be empty: "
	echo ${LINUX[*]}
        echo ${UNIX[*]}

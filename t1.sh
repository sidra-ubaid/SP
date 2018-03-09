#!/bin/bash

print_table ()
{

#1
	if [ $# -eq 0 ]
	then 
	echo "Sorry no arguments are passed "
#2
	elif [ $# -gt 6 ]
	then "Sorry arguments are greater than required"
#3
	elif [ $# -eq 1 ]
	then
	number=$1
	for i in `seq 1 10`
	do 
	echo "$1 * $i = `expr $number \* $i`"
	done
#4
	elif [ $2 = -s -a $# -eq 3 ]
	then
	num1=$1
	j=$3
	for j in `seq $j 10`
	do 
		echo "$1 * $j = `expr $num1 \* $j`"
	done
#5
	elif [ $2 = -e -a $# -eq 3 ]
	then 
	num2=$1
	for i in `seq 1 13`
	do 
	echo "$1 * $i = `expr $num2 \* $i`"
	done
#6
	elif [ $2 = -s -a $4 = -e -a $# -eq 5 ]
	then 
	num3=$1
	start=$3
	end=$5
	for start in `seq $start $end`
	do 
	echo "$1 * $start = `expr $num3 \* $start`"
	done
#7


	elif [ $2 = -s -a $4 = -e -a $6 = -r -a $# -eq 6 ]
	then
	num4=$1
	start1=$3
	end1=$5
	while [ $end1 -ge $start1 ]
	do
	echo "$num4 * $end1 = `expr $num4 \* $end1`"
	end1=`expr $end1 - 1` 
	done
	
	
	
else 
echo "BYE BYE"
fi


	

}

#main script starts here
#calling function
print_table $@



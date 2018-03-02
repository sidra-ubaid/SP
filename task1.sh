#!/bin/bash


	read -p "Enter first number " num1
	read -p "Enter second number " num2
	
	expr $num1 + 0 2>/dev/null && expr $num2 + 0 2>/dev/null && echo "valid input"  || echo "Invalid input"

 	if [ $? -eq 0 ]
	then 

			echo "Addition of numbers = " `expr $num1 + $num2`
			echo "Subtraction of numbers = " `expr $num1 - $num2`
			echo "Multiplication of numbers = " `expr $num1 \* $num2`
			echo "Mod of numbers = " `expr $num1 % $num2`
			
			if [ $num2 -ne 0 ]
				then 
					echo "Division of number = " `expr $num1 / $num2`
			else
			echo " number2 is invalid to divide OR Arithmetic exception "
			fi
	
	fi


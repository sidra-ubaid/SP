#!/bin/bash

arraycontent=(`cat file`)

echo "Display array:  " ${arraycontent[*]}

echo "Length of array:  " ${#arraycontent[*]}

echo "Length of 3rd element: " ${#arraycontent[2]}

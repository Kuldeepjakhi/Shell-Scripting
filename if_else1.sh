#!/bin/bash
echo "\Please enter the number"
read num
if [ $num -gt 0 ]
then
	echo "The $num is positive number"

elif [ $num -lt 0 ]
then	
    echo "the $num is negative number"

else
	echo "Please enter valid number "
 
fi
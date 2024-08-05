1. Reading the user input and storing it in a variable  

``` sh
#!/bin/bash 
echo "What's your name?" 
read entered_name 
echo -e "\nWelcome " $entered_name
```


2. Reading from a file

``` sh
while read line
do
  echo $line
done < input.txt
```

``` sh
while read inpt
do
ping -c 3 $inpt
if [ $? = 0 ]
then
echo "The server $inpt is pinging"
else
echo "Unable to ping server $inpt"
fi
done < server.txt
```


3. Redirecting output:  

`ls > files.txt`  

This lists the files in the current directory and writes the output to a file named files.txt.  

### Conditional statements

Syntax:  
``` sh
if [[ condition ]];
then
    statement
elif [[ condition ]]; then
    statement 
else
    do this by default
fi
```


We can use logical operators such as AND -a and OR -o to make comparisons that have more significance.  

`if [ $a -gt 60 -a $b -lt 100 ]`  
 

 Example 1:

``` sh
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
```



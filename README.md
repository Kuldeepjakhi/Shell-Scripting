
Convert Rows into Columns.  
``` bash

xargs -n1 < text_file.txt
or  
tr -s '[:blank:]' '\n' < text_file3.txt
or
tr -s ' '  '\n'< text_file3.txt > text_file4.txt
or
fmt -1 text_file3.txt

```



Reverse sorting.  
`sort -n -r numbers.txt`  
  
Writes results to file specified. 
`sort -n -r numbers.txt -o sort_output.txt`  

Ignore case while sorting [option -f]  
`sort -f string.txt`  

Sort and remove duplicates [option -u].  
`sort -u string.txt `   

Numeric Sorting.  

`sort -n string.txt ` 

Sorting according Specific Column [-k] with filed seprator[-t]* 

`sort -t ":" -k 3 -n /etc/passwd`
-n -> number sorting   

Sort File/folder size

du -s ~/Learning/* |sort -nr



> file Overwrite file with stdout
>> file append stdout to file
2> file Overwrite file with stderr
2>> file append stderr to file
&> file Overwrite file with stdout and stderr combined
&>> file append stdout and stderr to file


cat text_file1.txt \  text_file2.txt | grep Endorphins

 The pipe connects the output of the first with the input of the second
command. More details on this later.



Special Variables:

Sr.No.  Variable & Description
1 $0
The filename of the current script.
2 $n
These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
3 $#
The number of arguments supplied to a script.
4 $*
All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
5 $@
All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
6 $?
The exit status of the last command executed.
7 $$
The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
8 $!
The process number of the last background command.


``` sh
#!/bin/sh

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
```



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



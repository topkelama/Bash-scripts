#! /bin/bash

# Chhiring Lama
# Jan 2nd 2022
# Assumig any git user will follow the instruction and pass the argumments accordingly 

echo "Chhiring Lama"
echo "The date is as follows: "
date
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
# Total five positional parameters are passed including one existing directory named "camp"
#passed parameters are egg banana apple  test1 camp
# Assignment 3, Task 1
	echo "This is just to testing purpose"
	echo ""
	echo "The argument passed to this script is: $#"
	echo "Check if POsitional parameter is at least one " 
	echo ""
# following conditional statement will check if passed parameter is greater than 0
	if [ $# -eq 0 ]
	then 
		echo "No paramaeter is passed"
	else 
		echo "$# Positional parameter is passed"
		echo "it is obiously at least one"
	fi
# Check if passed parameter is a directory
# Make sure to pass a directory name in the positional parameter
# to check the code works properly.
	echo ""

	for var1 in ${@}
	do
# option -d will refer to directory
# conditional statement to test if each iteration has a directory
	if [[ -d ${var1} ]]; then
	echo "$var1 directory exixts"
	
	else
	echo "$var1 is not a directory"

	
	fi
	done
	echo ""
# check if no positional parameter is provided
# conditional if else statement
	if [ $# -eq 0 ]
	then
	echo "No positional parameter is provided"
	exit 1
	fi

	echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++++++"


	
# Task 2
echo "This is 2nd task following above"
echo "++++++++++++++++++++++++++++++++++++++++++++++"
# this function includes first name and last name
echo "This for loop will inform first name and last name of code generator"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""

my_func(){
	first_name=Chhiring
	last_name=Lama
	echo "First name is: $first_name"

	echo "Last Name is: $last_name"
	
	echo "Full name is $first_name  $last_name"

}
#function ends here
echo ""
# for loop will call the function above 2 times

	for ((i=1; i<=2; i++)) 
do
	echo "$i times of:"
	my_func
done
# Following task will iterate the function using while loop
echo ""
echo "This While loop will let 3 users enter their first and last name"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
	counter=1
	while [ $counter -le 3 ]
	do
		echo "$counter time: "
		my_func
		counter=$((counter + 1))
	done
	echo ""

echo "+++++++++++++++++++++++++++++++++++++++++++++"
echo ""
#Task 3 of Assignment 3
echo "This is task 3 "
echo ""
echo "A function named check_temp is defined"
#This function will check the directory "temp" and creates if it does not exist
#In mycase I am in /home/ec2-user/myTaskAutomation, it depends where you want to look for
	check_temp(){
	DIR="/home/ec2-user/myTaskAutomation/temp/"
	if [ -d "$DIR" ] 
	then
		echo "The directory temp exists in the home directory "

	elif 
		[ ! -d "$DIR" ]
	then
		mkdir -p /home/ec2-user/myTaskAutomation/temp
		echo "nested if  else is placed here to check if temp directory is created"
		ndir="/home/ayusha/Desktop/class_notes_3523/temp/"
		if [ -d "$ndir" ]
		then
			
			echo "a new directory is created"
	
		fi

	fi

}
echo "Function is called here"
check_temp
echo ""

# Task 4

echo "+++++++++++++++++++++++++++++++++"
echo ""

read -p "Enter first name " first
read -p "Please enter last name " last
	if [ -z "$first" ] # option -z retrun true if variable is empty
	then
	echo "First Name is : empty"
else
	echo "first name is: $first "
	echo "last name is: $last  "

	fi

echo ""
#Task 5

echo "++++++++++++++++++++++++++++++++"
echo ""
echo "Declare and define a function below to inform users. "
	usage(){
	echo "Name of this script is $0"
	echo "+++++++++++++++++++++++++++++++++++++++++++"
	echo "This script is created as a handy tool"
	echo "This script will have 5 positional parameters including a existing directory name"
	echo "one function  will check if spesific directory is existed otherwise it will creat one."
	echo "Another one will print programmers name twice with for loop and trice with while loop. "
	echo""
	exit 1


	}
#function called here
	usage














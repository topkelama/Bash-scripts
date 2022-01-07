#! /bin/bash

# Chhiring Lama
# Assignment 5, Task 3
# Date December 13, 2020
echo "Chhiring Lama"
date
echo "++++++++++++++++++++++++++++++++++"
echo""
echo "Assignment 5, Task 3" 
echo""
# command to run AWK program
	echo "This is output from the AWK program"
	echo ""
	awk -f As5_clama.awk salary_file.txt

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo  "This task will ask user to input a file name"
echo ""
	read -p "Please enter your file name: " readfile
	
	echo "You entered " $readfile
	echo "Test if entered file is readable or not"

	if [ -f $readfile ]    # If the value of readfile variable is existed as a file or not
	then
		echo "file is existed"
		if [ -r $readfile ]
		then
			echo ""
			echo "The file is readable"
			echo ""
		
			if [[ ${readfile: -4} == ".txt" ]]
			then
				echo "This is a txt file"
				echo "It validates from 3.a through 3.c"
				echo ""
				echo "This is the output from SED program"
				sed -f As5_clama.sed filetest.txt
				exit 0
			else 
				echo "Not a txt file"
			fi
		else
			# if file without read permit is entered 
			#the program will throw follwoing message
			echo "Please, run chmod command to permit user read "
		fi


	
	else
		# If nonexisting file name is entered 
		#then it will throw following message"
		echo "NO, This file Does not exist, "
		exit 1
	
	fi





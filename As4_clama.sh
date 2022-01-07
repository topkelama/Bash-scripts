#! /bin/bash

# Chhiring Lama
#Assignment
echo "Chhiring Lama"
echo "Assignment 4"
echo "Name of this script is: "

echo "++++++++++++++++++++++++++"
echo""

#builtin getopts is defined here

while getopts :jkz: var1   
	# colon after the option means it requires its own argument
	# colon at the beggining of the option means program will handle the errors

do 
	case $var1 in 
		j) echo "Option -j is triggered but it does't require argument " >&2
			;;
		k) echo "Option -k is triggered but it does't require argument " >&2
			;;
		z) echo "Option -z it triggered, passed parameter is: $OPTARG " >&2
			;;
			# when something invalid option is fed it will be handled
			#passed option will be stored inthe OPTARG
		
		\?) echo "Passed invalid option, passed option is: $OPTARG " >&2
			;;
			# when the option with colon is passed then it will require the arguement 
		:) echo "The passed option $OPTARG requires argument" >&2
			exit 1
			;;
	esac

done
# if no positional parameter was passed the do nothing
	if [[ -z $@ ]]

		then
			exit 0
		elif [[ $1 == \-+ ]]  # if positional parameters were passed but no oprions were involked
			            # Assuming first positional parameter is -option 
		then  
			echo $2
		else
			echo $1        
	fi

echo  "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
#a function is difined to inform the user about the script
	usage () {
	echo " Name of this script is: $0 "
	echo ""
	echo "This is to inform the users about the getopts builtin"
	echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo "getopts is a builtin to parse the command-line argument"
	echo "This script will take three options 'j' 'k' and  'z' with an arguemnt"
	echo "If options other than mentioned above is passed then it is invalid"
	echo "The colon at the beggining of the options indicates that errors will be handeled"
	echo "The colon followng a option indicates that it requires an argument"
	echo "The option ? in the case statement is to handle the invalid option "
	echo "The passed ivalid option will be stored in the OPTARG variable "
	echo "When an argument for the option is passed it will store in OPTARG "
	echo "Finally, the oprions and the argument is fed in execution of the script"
	


	}
echo ""
echo "the function is called here"
usage

echo "The end" 




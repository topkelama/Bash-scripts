# Chhiring Lama
# This is a part of Assignment
# Assignment 5, Task 1
 
BEGIN {
	print "My name is Chhiring Lama, \nI am pursuing my Btech in Networking Securyty"
	print "\n"
	# declare and initialize the variables

	total_earn = 0
	min  = 0
	num_emp = 0
	least__hr = 0
	cumulative_sal = 0
	
		}
		#print Names and worked hours who earned more than 400
		{
			total_earn = $2 * $3 

			if (total_earn > 400)
		
				printf "Name:  %-15s worked Hours:  %3d\n",  $1, $3
		
		}

		# match all employee names with the letter starting from B,C and L
		$1 ~ /[\bB-C\bL]/{
			printf "								Name:  %8s   	PayPerHour:  %8d\n",	$1,	$2 
		
		}
		 
			# Cumulative salary of the employees
		{ cumulative_sal = cumulative_sal + total_earn }

		# MInimum hours worked employee
	
		{	
		NR == 1( min == "" || $3 < min )
			{ min = $3}



			
		 }
		


		

END {
	print ""
	# total number of employees
	print " Total number of Employees: " NR
	print ""
	# total paidout salary for the employees
	print "Total cumulated salary paid to employees:  " cumulative_sal
	print ""
	print "Least hour worked is : " min


				print "END" 
				}




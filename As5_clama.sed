# Chhiring Lama
# This is a sed program 
# Assignment 5, Task 2

# 1) first command is to delete all empty lines, some reson /^$/d did not work for me
 
	/^[[:space:]]*$/d

# 2) This command is to append the string 'my name' after last line of the file

	$ a\
Chhiring Lama


# 3) This command will replace the string CityTech with NYCCT regardless of case
	

	s/CityTech/NYCCT/i


 


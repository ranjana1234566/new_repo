#!/bin/bash
# Enter the student name
# Enter the emailid
# Enter the phone no.

COURSE="Bash Scripting"
while getopts "c:h" opt ; do
 	case $opt in
	  c) COURSE=$OPTARG  ;;
	  h) echo "Usage : $0 [-c course]" ; exit 0 ;;
	  *) echo "Invalid Option" ; exit 1 ;;
	esac
done

echo "==== Student Registration system ===="
read -p "Enter Your Name :" NAME
read -p "Enter Your Email:" EMAIL
read -p "Enter Your Phone:" PHONE

# Validate the name
if [ -z "$NAME" ]; then
	echo "Error: Name should not be empty"
	exit 1
fi

#Validate email
if [[ "$EMAIL" != *"@"* ]]; then
	echo "Error: Invalid email,Must contain @"
	exit 1
fi

#To generate random student id
STUDENT_ID="STU-$(date +Y%m)-$RANDOM"

#Timestamp
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

#To save the file 
echo "$STUDENT_ID | $NAME | $EMAIL | $PHONE | $COURSE | $TIMESTAMP" > students.txt

#Display student registration confirmation
echo " "
echo "==== StudentRegistration Successful ===="
echo "Student ID: $STUDENT_ID"
echo "Name : $NAME"
echo "Email: $EMAIL"
echo "Phone: $PHONE"
echo "Course: $COURSE"
echo "Registred at : $TIMESTAMP"
echo "Record registred to students.txt"

#! /bin/bash
echo "Project"
echo "This project was designed to evaluate some exams"
#The next search is made for compiling all the .c files
find . -name '*.c' -execdir gcc {} -o {}.exe \;


# Here the executable is processed by the script p1.in
for line in $(sudo find -name '*.c.exe');
do
	echo "Passing the input data to the executable"
	./$line.c.exe < p1.in
done;

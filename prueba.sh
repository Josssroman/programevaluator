#! /bin/bash
echo "Project"
echo "This project was designed to evaluate some exams"
#The next search is made for compiling all the .c files
find . -name '*.c' -execdir gcc {} -o {}.exe \;


# Here the executable is processed by the script p1.in
for line in $(sudo find . -name "*1.c.exe");
do
	echo "Passing the input  data p1 to the executable"
	$line  <  p1.in > $line.out
	#diff $line.out p1R.pr
	coounter = $(grep -c 10609 p1R.pr)	
done
# p2.in
for line2 in $(sudo find . -name "*2.c.exe");
do
	echo "Passing the input data p2 to the executable"
	$line2 < p2.in > $line2.out
       #diff $line2.out p1R.pr	
done
#p3.in
for line3 in $(sudo find . -name "*3.c.exe");
do 
	echo "Passing the input data p3 to tha executable"
	$line3 < p3.in > $line3.out
done
#p4.in
for line4 in $(sudo find . -name "*4.c.exe");
do
	echo "Passing the input data p4 to the executable"
	$line4 < p4.in > $line4.out
done



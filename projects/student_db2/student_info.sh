#!/bin/bash

# Info about my computer science students from students database

echo -e "\n~~ My Computer Science Students ~~\n";
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:";

echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")";

echo -e "\nAll course names whose first letter is before 'D' in the alphabet:";

echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")";

echo -e "\nFirst name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:";

echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' and (gpa > 3.8 OR gpa < 2.0)")";

echo -e "\nLast name of students whose last name contains a case insensitive 'sa' or have an 'r' as the second to last letter:";

echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' OR last_name LIKE '%r_'")";

echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:";

echo "$($PSQL " SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL AND (first_name LIKE 'D%' OR gpa > 3.0)")";

echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':";

echo "$($PSQL "SELECT course FROM courses WHERE course LIKE '_e%' OR course LIKE '%s' ORDER BY course DESC LIMIT 5")";

echo -e "\nAverage GPA of all students rounded to two decimal places:";

echo "$($PSQL "SELECT ROUND(AVG(gpa), 2) FROM students;")";

echo -e "\nMajor ID, total number of students in a column named 'number_of_students', and average GPA rounded to two decimal places in a column name 'average_gpa', for each major ID in the students table having a student count greater than 1:";
# students=> select major_id,count(*) as number_of_students,min(gpa) as min_gpa,max(gpa) as max_gpa from students group by major_id having max(gpa) = 4.0;
echo "$($PSQL "SELECT major_id, COUNT(*) as number_of_students, ROUND(AVG(gpa), 2) as average_gpa FROM students GROUP BY major_id HAVING COUNT(*) > 1")";

echo -e "\nList of majors, in alphabetical order, that either no student is taking or has a student whose first name contains a case insensitive 'ma':";

# situation: students table, join majors table
# left join only join the major that has student in it
# tips to remember : keep full student (the left table), major that dont have student wont appear

# right join only join the student that has major
# tips to remember: keep full major (the right one), student without a major wont appear

# full join join all rows

# inner join only join if a student have a major and a major have a student
# tips: the combine of left and right join worked at a moment

echo "$($PSQL "SELECT major FROM majors LEFT JOIN students ON majors.major_id = students.major_id WHERE student_id IS NULL OR first_name ILIKE '%ma%' ORDER BY major")";

echo -e "\nList of unique courses, in reverse alphabetical order, that no student or 'Obie Hilpert' is taking:";

# use USING keyword instead of tbl1.key = tbl2.key
# with uSING keyworkd, the 2 major_id column in the previous method is now turned into just one
# so when querying the major_id we wont get ambiguous column (because we have 2 major_id column in the previous method)
# with the keyword, it will make the job much easier to join multiple table at one
# oh my fking got I cannot believe that MS SQL does not support the USING keyword that cook me so much in the previous java web project using ms sql previous semester
# but note that we can onlu use using keyword if both table primary/foreign key column shares the same name
# but dang the USING keyword is a game changer

# unique courses
# reverse apha
# no student or 'Obie Hilpert' is taking
echo "$($PSQL "SELECT distinct(course)  FROM courses FULL JOIN majors_courses USING(course_id) FULL JOIN students USING(major_id) WHERE student_id IS NULL OR student_id = 23 ORDER BY course DESC")";

echo -e "\nList of courses, in alphabetical order, with only one student enrolled:";

echo "$($PSQL "SELECT course FROM courses FULL JOIN majors_courses USING(course_id) FULL JOIN students USING(major_id) GROUP BY course HAVING  COUNT(DISTINCT(student_id)) = 1 ORDER BY course")";
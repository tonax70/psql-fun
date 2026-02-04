#!/bin/bash

echo hello SQL
ls
psql --username=freecodecamp --dbname-postgres
psql --username=freecodecamp --dbname=postgres
touch insert_data.sh
chmod +x insert_data.sh
cat courses.csv
./insert_data.sh
./insert_data.sh
declare -p IFS
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
cp courses.csv courses_test.csv
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
cp students.csv students_test.csv
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
./insert_data.sh
ls -l
rm students_test.csv
rm courses_test.csv
ls
pg_dump --help
pg_dump --clean --create --inserts --username=freecodecamp students > students.sql
ls
history > commands_bash_tab.txt

echo 'sed -i 's/^.......//' ./projects/student_db1/commands_bash_tab.sh';
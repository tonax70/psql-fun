#!/bin/bash


echo hello bash
echo hello bash > stdout.txt
echo hello bash >> stdout.txt
echo hello bash > stdout.txt
> stdout.txt
bad_command
bad_command > stderr.txt
stderr>stderr.txt
stderr > stderr.txt
bad_command > stderr.txt
bad_command 2> stderr.txt
echo hello bash 1> stdout.txt
read NAME
echo $NAME
echo $NAME 1> stdout.txt
echo freeCodeCamp > name.txt
read NAME < name.txt
echo $NAME
read NAME | echo $NAME
echo tonax | read NAME;
echo $NAME
cat
cat name.txt
read < name.txt
cat name.txt | read
cat < name.txt
echo tonax | cat
touch script.sh
cmod +x srcript.sh
chmod +x script.sh
./script.sh
./script.sh | echo $NAME
echo $NAME | ./script.sh
echo tonax | ./script.sh
echo tonax | ./script.sh 2> stderr.txt
echo tonax | ./script.sh 2> stderr.txt 1> stdout.txt
 ./script.sh < name.txt
 ./script.sh < name.txt 2> stderr.sh
 ./script.sh 2> stderr.sh
 ./script.sh < name.txt 2> stderr.txt
 ./script.sh < name.txt 2> stderr.txt 1> stdout.txt
cat kitty_ipsum.txt
cat kitty_ipsum_1.txt
cat kitty_ipsum_2.txt
wc kitty_ipsum_1.txt
man wc
wc -l kitty_ipsum_1.txt
wc -w kitty_ipsum_1.txt
wc -c kitty_ipsum_1.txt
man wc
wc -m kitty_ipsum_1.txt
wc kitty_ipsum_1.txt
cat kitty_ipsum_1.txt | wc
cat < kitty_ipsum_1.txt | wc
wc < kitty_ipsum_1.txt
echo "~~ kitty_ipsum_1.txt info ~~" > kitty_info.txt
echo -e "\nNumber of lines: " >> kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -l 
cat kitty_ipsum_1.txt | wc -l >> kitty_info_1.txt
cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -m >> kitty_info.txt
wc -m < kitty_info_1.txt
wc -m < kitty_ipsum_1.txt
wc -m kitty_ipsum_1.txt >> kitty_info.txt
wc -m <  kitty_ipsum_1.txt >> kitty_info.txt
grep < meow < kitty_ipsum_1.txt
grep meow < kitty_ipsum_1.txt
grep 'meow'  kitty_ipsum_1.txt
man grep
grep 'meow'  kitty_ipsum_1.txt --color
grep 'meow'  kitty_ipsum_1.txt --color 2
grep 'meow'  kitty_ipsum_1.txt --color 
grep 'meow'  kitty_ipsum_1.txt --color 1
grep 'meow'  kitty_ipsum_1.txt --color=1
grep 'meow'  kitty_ipsum_1.txt --color=31
grep 'meow'  kitty_ipsum_1.txt --color=auto
grep 'meow'  kitty_ipsum_1.txt --color=01
man grep
grep 'meow'  kitty_ipsum_1.txt --color -c
man grep
grep 'meow'  kitty_ipsum_1.txt --color -n
grep 'meow[a-z]*'  kitty_ipsum_1.txt --color -n
echo -e \nNumber of times meow or meowzer appears: >> kitty_info.txt
echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
man grep
grep "meow[a-z]*" kitty_ipsum_1.txt -c > kitty_info.txt
grep "meow[a-z]*" kitty_ipsum_1.txt -c >> kitty_info.txt
man grep
grep "meow[a-z]*" kitty_ipsum_1.txt -c --color  >> kitty_info.txt
grep "meow[a-z]*" kitty_ipsum_1.txt -c  >> kitty_info.txt
man grep
grep "meow[a-z]*" kitty_ipsum_1.txt -o  >> kitty_info.txt
grep "meow[a-z]*" kitty_ipsum_1.txt -o  >> kitty_info.txt | wc -l
grep "meow[a-z]*" kitty_ipsum_1.txt -o  | wc -l
grep "meow[a-z]*" kitty_ipsum_1.txt -o  | wc -l > kitty_info.txt
grep "meow[a-z]*" kitty_ipsum_1.txt -o  | wc -l >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n "meow[a-z]*" kitty_ipsum_1.txt
man grep
cat name.txt
sed 's//' name.txt
sed 's///' name.txt
sed 's/r/2/' name.txt
sed 's/free/f233/' name.txt
sed 's/freecodecamp/f233C0d3C@mp/' name.txt
sed 'sgi/freecodecamp/f233C0d3C@mp/' name.txt
sed -gi 's/freecodecamp/f233C0d3C@mp/' name.txt
sed 's/freecodecamp/f233C0d3C@mp/g' name.txt
sed 's/freecodecamp/f233C0d3C@mp/gi' name.txt
sed 's/freecodecamp/f233C0d3C@mp/gi/' name.txt
sed 's/freecodecamp/f233C0d3C@mp/gi' name.txt
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt
sed 's/freecodecamp/f233C0d3C@mp/i'< name.txt
cat name.txt | sed '/freecodecapm/f233C0d3C@mp/i'
cat name.txt | sed 's/freecodecamp/f233C0d3C@mp/i'
grep -c  'meow[a-z]*' kitty_ipsum_1.txt
grep -n  'meow[a-z]*' kitty_ipsum_1.txt
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]/1/'
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]+/1/'
man se
dman sed
man sed
man sed
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed -r 's/[0-9]+/1/'
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed -r 's/([0-9]+)/\1/'
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed -r 's/([0-9]+).*/\1/'
grep -n  'meow[a-z]*' kitty_ipsum_1.txt | sed -r 's/([0-9]+).*/\1/'  >>  kitty_info.txt
grep --color cat kitty_ipsum_1.txt
grep --color 'cat[a-z]*' kitty_ipsum_1.txt
echo -e "Number of times cat, cats , or catnip appears:" >>  kitty_info.txt
echo -e "Number of times cat, cats, or catnip appears:" >>  kitty_info.txt
echo -e "\nNumber of times cat, cats, or catnip appears:" >>  kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_1.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt
man grep
grep -o 'cat[a-z]*' kitty_ipsum_1.txt
man grep
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l >  kitty_info.txt
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l >>  kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -r 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -r 's/([0-9]+).*/\1/'  >> kitty_info.txt
echo -e "\n\n~~ kitty_ipsum_2.txt info ~~" >> kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -l > kitty_info.txt
cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -w >> kitty_info.txt
wc -w kitty_ipsum_2.txt >> kitty_info.txt
wc -w < kitty_ipsum_2.txt >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -m >> kitty_info.txt
grep 'meow[a-z]*' kitty_ipsum_2.txt
grep 'meow[a-z]*' kitty_ipsum_2.txt --color
echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
man grep
grep 'cat[a-z]*' kitty_ipsum_2.txt 
grep 'cat[a-z]*' kitty_ipsum_2.txt -o | wc -l
grep 'cat[a-z]*' kitty_ipsum_2.txt -o | wc -l >> kitty_info.txt
grep -o 'cat[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt
grep -o 'cat[a-z]*' kitty_ipsum_2.txt
grep -o 'meow[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt
ehco -e "\nLines that they appear on:" >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -l 'meow[a-z]*' kitty_ipsum_2.txt
grep -n 'meow[a-z]*' kitty_ipsum_2.txt
grep -n 'meow[a-z]*' kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/'
grep -n 'meow[a-z]*' kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/' >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_2.txt
grep -n --color 'cat[a-z]*' kitty_ipsum_2.txt
grep --color 'cat[a-z]*' kitty_ipsum_2.txt
echo -e '\nNumber of times cat, cats, or catnip appears:' >> kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_2.txt -o | wc -l >> kitty_info.txt
echo -e '\nLines that they appear on:' >> kitty_info.txt
grep -n kitty_ipsum_2.txt
grep 'cat[a-z]*' kitty_ipsum_2.txt -n
grep 'cat[a-z]*' kitty_ipsum_2.txt -n | sed '/s/([0-9]+).*/\1/'
grep 'cat[a-z]*' kitty_ipsum_2.txt -n | sed 's/([0-9]+).*/\1/'
grep 'cat[a-z]*' kitty_ipsum_2.txt -n | sed -r 's/([0-9]+).*/\1/'
grep 'cat[a-z]*' kitty_ipsum_2.txt -n | sed -r 's/([0-9]+).*/\1/' >> kitty_info.txt
touch translate.sh
chmod +x translate.sh
./translate.sh kitty_ipsum_1.txt
./translate.sh < kitty_ipsum_1.txt
cat  kitty_ipsum_1.txt | ./translate.sh
cat < kitty_ipsum_1.txt | echo
cat < kitty_ipsum_1.txt | cat
./translate.sh kitty_ipsum_1.txt
./translate.sh kitty_ipsum_1.txt | grep 'dogchow'
./translate.sh kitty_ipsum_1.txt | grep 'dogchow' --color
./translate.sh kitty_ipsum_1.txt | grep 'catnip' --color
./translate.sh kitty_ipsum_1.txt | grep 'dog[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep 'cat[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep 'dog[a-z]*|woof[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep -r 'dog[a-z]*|woof[a-z]*' --color
man grep
./translate.sh kitty_ipsum_1.txt | grep -E 'dog[a-z]*|woof[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep -E 'dog[a-z]*|woof[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep -E 'dog[a-z]*|woof[a-z]*' --color
./translate.sh kitty_ipsum_1.txt | grep -E 'meow[a-z]*|cat[a-z]*' --color
./translate.sh kitty_ipsum_2.txt | grep -E 'meow[a-z]*|cat[a-z]*' --color
./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt
cat doggy_ipsum_1.txt
diff kitty_ipsum_1.txt doggy_ipsum_1.txt
man diff
man diff
diff kitty_ipsum_1.txt doggy_ipsum_1.txt --color
./translate.sh kitty_ipsum_2.txt > doggy_ipsum_2.txt
cat doggy_ipsum_2.txt
diff --color kitty_ipsum_2.txt doggy_ipsum_2.txt
hisory > kitty_ipsum_all_commands_log.sh
history > kitty_ipsum_all_commands_log.sh
man history
history | cut -c 8-  > kitty_ipsum_all_commands_log.sh

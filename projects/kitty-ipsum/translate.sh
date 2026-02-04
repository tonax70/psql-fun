#!/bin/bash

#cat method: cat kitty_ipsum_1.txt
#cat with redirect cat < kitty_ipsum_1.txt
#cat with pipe cat < kitty_ipsum_1.txt | cat

cat $1 | sed -r 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g';

# Quote of the day from Mr. Tri from Vietinbank VOP : "Quá trình không quan trọng, kết quả mới quan trọng" - harsh reality form company environment and also social life, people only care about the result, no one cares about the process
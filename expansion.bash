#! /bin/bash

# Brace expanison
echo a{b,c,d}e
echo {0..5}
echo {00..8..2}

# mkdir /usr/local/src/bash/{old,new,dist,bugs}
# chown root /usr/{ucb/{ex,edit},lib/{ex?.?*,how_ex}}

echo -e '\n'

# Command substitution
now=`date +%T`
echo $now

now2=$(date +%T)
echo $now2

now3=date+%T
echo $now3

echo -e '\n'

# Arithmetic expanison 数学运算

result=$(( ((10 + 5*3) - 7) / 2 ))
echo $result

para_cal=$(($1 * ($2 + $3)))
echo $para_cal

echo -e ./project-$para_cal/{dest,src,test}/{index,util}.js'\n'


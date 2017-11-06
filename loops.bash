#! /bin/bash

# for
for i in {1..5}; do echo $i; done

for (( i = 0; i < 10; i++ )); do
  echo $i
done

# while
x=0
while [[ $x -lt 20 ]]; do
  echo $(( $x * $x ))
  x=`expr $x + 1`
done

# until
# until [[ condition ]]; do statements; done

# break and continue
for (( i=0; i<10; i++ )); do
  if [[ $(( $i % 2 )) == 0 ]]; then
    continue; 
  fi
  echo $i
done


# demo
num=$1
while [[ $num -le $2 ]]; do
  if [[ $(( num % 2 )) == 0 ]]; then
    echo $num
  fi
  num=$(( $num + 1 ))
done


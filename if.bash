#! /bin/bash

if [[ 1 -eq 1 ]]; then echo "true"; fi

if [[ 1 -eq 1 ]]; then
  echo "true"
fi

if [[ 2 -ne 1 ]]; then echo "true"; else echo "false"; fi

if [[ 2 -ne 1 ]]; then
  echo "true"
else
  echo "false"
fi

if [[ 'nuame' == "Adam" ]]; then
  echo "Do not eat an apple!"
elif [[ 'uname' == "Eva" ]]; then
  echo "Do not take an apple!"
else
  echo "Apples are delicious!"
fi

if [[ $1 -ge 0 && $1 -lt 12 ]]; then
  echo Good morning!
elif [[ $1 -ge 12 && $1 -lt 18 ]]; then
  echo Good afternoon!
elif [[ $1 -ge 18 && $1 -lt 24 ]]; then
  echo Good Evening!
else
  echo Error!
fi

if [[ 4 < 20 ]]; then
  echo "4 less then 20 in [[]]"
else
  echo "4 greater then 20 in [[]]"
fi 

if (( 4 < 20 )); then
	echo "4 less then 20 in (())" 
else
  echo "4 greater then 20 in (())" 
fi 


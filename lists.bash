#! /bin/bash

#./lists.bash true true false

$1 || echo 'Fisrst parameter is false.'
$2 && echo $PWD 
$3 && ls || echo 'Third parameter is false'


#! /bin/bash
# 
# 3 way to uses -x option
# 1. when run script, ./debug -x
# 2. uses -x option at /bin/bash
# 3. uses set -x/+x to the part of code you want to debug.

echo 'xtrace is off now'

set -x
echo 'xtrace is turn on now'
for (( i = 0; i < 3; i++ )); do
  echo $i
done
set +x

echo 'xtrace is turned off'


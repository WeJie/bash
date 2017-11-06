#! /bin/bash

# position parameter
# run ./parameters.bash one two three four five
echo 'position parameter:'
echo '$0:' $0
echo '$1:' $1
echo '$2:' $2
echo '$3:' $3
echo '$4:' $4
echo '$5:' $5
echo '$6:' $6
echo '$#:' $#

echo -e "\n"

echo "special parameter:"
echo '$*, all parameter:' $*
echo '$@, all parameter:' $@
echo '$#, number of parameter:' $#
echo '$?, exit status of most recently executed foreground pipleline:' $?
echo '$-, Expands to the current option flags as specified upon invocation:' $-
echo '$$, Expands to the process ID of the shell:' $$
echo '$!, Expands to the process ID of the job most recently placed into the background:' $!
echo '$_, At shell startup, set to the absolute pathname used to invoke the shell or shell script being executed as passed in the environment or argument list:' $_


echo -e "\n"
foo=${foo:-'default'}
echo 'foo=${foo:-'default'}, default value:' $foo

# 修改参数值
echo -e "\n"
set -- 01234567890abcdefgh
echo 'set -- 01234567890abcdefgh'
echo '${1:7}, 第1个参数，第7个字符开始的值' ${1:7}

# @ 表示所有参数
echo -e "\n"
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo 'set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h'
echo '${@:7} 第7个参数开始剩下的参数:' ${@:7}
echo '${@:7:1} 第7个参数 第1个字符:' ${@:7:1}
echo ${@:0}
echo ${@:0:2}
echo ${@: -7:0}

# 数组
echo -e "\n"
echo 'array=(0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h) '
array=(0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h)

echo '${array[@]:7}:'     ${array[@]:7}
echo '${array[@]:7:2}:'   ${array[@]:7:2}
echo '${array[@]: -7:2}:' ${array[@]: -7:2}
echo '${array[@]: -7:-2}:' ${array[@]: -7:-2}
echo '${array[@]:0}:'     ${array[@]:0}
echo '${array[@]:0:2}:'   ${array[@]:0:2}
echo '${array[@]: -7:0}:' ${array[@]: -7:0}
echo '${#array}:' ${#array}

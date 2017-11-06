#! /bin/bash

# 创建数组
fruits[0]=Apple
fruits[1]=Pear
fruits[2]=Plum
echo ${fruits[*]}

# 创建数组2
fruits=(Apple Pear Plum)

# 修改已有的数组 
fruits=(Orange ${fruits[*]} Banana Cherey)
echo ${fruits[*]}


echo -e '\n'

echo 'slice'
echo ${fruits[*]:0:2}

echo -e '\n'

# 参数数组处理
param=${@:2:2}
echo ${param[*]}

param=(I am ${param[*]} and ${@:4:1})
echo ${param[*]}


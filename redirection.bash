#! /bin/bash
#
# | Code | Descriptor | Description         |
# -------------------------------------------
# |0     |stdin       |The standard input.  |
# |1     |stdout      |The standard output. |
# |2     |stderr      |The errors output.   |

# 会覆盖已有内容
ls -l > list.txt
# 追加在已有内容后面
ls -l >> list.txt

# 重定向输出和错误输出
grep da * &> error-and-standard.txt

# 只重定向错误输出
grep da * 2> error.txt

# < 操作符，只能接收文件或命令的输出作为输入
less < errors.txt

# 读取
#less << errors.txt

# <<< 操作符 << 操作符的变体，直接使用 String 作为输入
less <<< 'world'

# &>word; >&word ;>word 2>&1; 三个命令等价

# directs both standard output (file descriptor 1) and 
# standard error (file descriptor 2) to the file dirlist
ls > dirlist 2>&1

# command directs only the standard output to file dirlist 
# because the standard error was made a copy of the standard output 
# before the standard output was redirected to dirlist.
ls 2>&1 > dirlist2


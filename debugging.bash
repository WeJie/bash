#! /bin/bash
# Flag Name        Description
# ---- ----------- ----------------------------------------
#  -f  noglob      Disable filename expansion (globbing).
#  -i  interactive Script runs in interactive mode.
#  -n  noexec      Read command, but don't execute them (syntax check).
#  -t  —           Exit after first command.
#  -v  verbose     Print each command to stdout before executing it.
#  -x  xtrace      Print each command to stdout before executing it and expands commands.


#set -n
#set -v

echo $@
touch $@
mkdir folder
mv $@ ./folder
cd folder
ls

set +v
set +n


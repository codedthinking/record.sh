#!/bin/bash

asciinema rec -c 'watch --color -tn1 "pwd"' --overwrite $1-pwd.cast > /dev/null &
T1=${!}
asciinema rec -c 'watch --color -tn1 "tree"' --overwrite $1-tree.cast > /dev/null  &
T2=${!}
asciinema rec -c 'watch --color -tn1 "git status"' --overwrite $1-git-status.cast > /dev/null  &
T3=${!}
asciinema rec -c 'watch --color -tn1 "git log --oneline"' --overwrite $1-git-log.cast > /dev/null  & 
T4=${!}
asciinema rec --stdin $1-terminal.cast
kill $T1 $T2 $T3 $T4
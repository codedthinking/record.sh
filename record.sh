#!/bin/bash

asciinema rec -c 'watch --color -tn1 "pwd"' $1-pwd.cast &
T1=${!}
asciinema rec -c 'watch --color -tn1 "tree"' $1-tree.cast &
T2=${!}
asciinema rec -c 'watch --color -tn1 "git status"' $1-git-status.cast &
T3=${!}
asciinema rec -c 'watch --color -tn1 "git log --oneline"' $1-git-log.cast & 
T4=${!}
asciinema rec --stdin $1-terminal.cast
kill $T1 $T2 $T3 $T4
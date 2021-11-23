asciinema rec -c 'watch --color -tn1 "pwd"' $1-pwd.cast &
asciinema rec -c 'watch --color -tn1 "tree"' $1-tree.cast &
asciinema rec -c 'watch --color -tn1 "git status"' $1-git-status.cast &
asciinema rec -c 'watch --color -tn1 "git log --oneline"' $1-git-log.cast & 
asciinema rec --stdin $1-terminal.cast
wait
{
    echo "watch --color -tn1 \"pwd\"" | asciinema rec $1-pwd.cast 
} &
{
    echo "watch --color -tn1 \"tree -a\"" | asciinema rec $1-tree.cast 
} &
{
    echo "watch --color -tn1 \"git status\"" | asciinema rec $1-git-status.cast 
} &
{
    echo "watch --color -tn1 \"git log --oneline\"" | asciinema rec $1-git-log.cast 
} &
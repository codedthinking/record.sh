{
    echo "watch -tn1 pwd" | asciinema rec $1-pwd.cast 
} &
{
    echo "watch -tn1 tree" | asciinema rec $1-tree.cast 
} &
{
    echo "watch -tn1 git status" | asciinema rec $1-git.cast 
} &
# record.sh
Bash script to record terminal plus four background channel (pwd, tree, git status, git log) with asciinema.

The main goal is to show students in class recordings how the state of your computer changes during a shell session.

## Installation
Save `record.sh` to a place of your convenience. 

`curl -Lo record.sh https://raw.githubusercontent.com/codedthinking/record.sh/main/record.sh`

### Dependencies
- `asciinema`
- `watch`
- `tree`
- `git`

## Usage
To start a recording named `lesson`, type
```
bash record.sh lesson
```
This will start an asciinema session and save it to `lesson-terminal.cast` in your current directory.

In the backgroud, four other asciinema sessions are recorded, respectively, to `lesson-pwd.cast`, `lesson-tree.cast`, `lesson-git-status.cast`, `lesson-git-log.cast`. These are recording, at one second intervals, the output of the commands `pwd`, `tree`, `git status`, and `git log --oneline`. 

Because the timestamps of the recordings are in sync, you can use these channels to show how the state of the system changes as you type commands in shell.
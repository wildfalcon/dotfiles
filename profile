alias gst='git status'
alias gba='git branch -a'
alias gl='git log --graph --decorate --format=format:"%C(white) %d %Cblue %h %Cred %an %cr %Cgreen %s"'

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

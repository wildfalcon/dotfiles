
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias gst='git status'

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# ls aliases
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'

# Github setup
alias gst='git status'
alias gba='git branch -a'
alias gl='git log --graph --decorate --format=format:"%C(white) %d %Cblue %h %Cred %an %cr %Cgreen %s"'


# Rb env setup
#export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Set up ruby
export RUBYOPT='-W:no-deprecated -W:no-experimental' # No warnings
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Fix NSCFConstantString initialize error
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Set up homebrew completions
# if type brew &>/dev/null; then
#   HOMEBREW_PREFIX="$(brew --prefix)"
#   if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
#     source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
#   else
#     for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
#       [[ -r "$COMPLETION" ]] && source "$COMPLETION"
#     done
#   fi
# fi

# Set up custom paths
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"


# Set up prompts
#source ~/.git-completion.bash
#source ~/.git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# Load completions
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
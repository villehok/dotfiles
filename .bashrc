#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable ctrl-s and ctrl-q
stty -ixon

# Shell Options
shopt -s cdspell
shopt -s checkwinsize
shopt -s extglob
shopt -s autocd
shopt -s dirspell

# Command history
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="%F %T"

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Append to history instead of overwriting it
shopt -s histappend
PROMPT_COMMAND='history -a'

# Aliases
alias c='clear'
alias l='command ls'
alias ll='ls -lah --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias mkd='mkdir -pv'
alias so='source'
alias v='nvim'
alias sv='sudo nvim'
alias nvimrc='nvim ~/.config/nvim/init.lua'
alias bashrc='nvim ~/.bashrc'
alias ccat='bat'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpp='git pull'
alias gcl='git clone'
alias gpo='git push -u origin main'

PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"

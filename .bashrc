#
# ~/.bashrc
#
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# alias g='git'
alias gis='git status'
alias gic='git commit -m'
alias gips='git push'
alias gipl='git pull'
alias gia='git add'
alias giaa='git add .;git status;'
alias gib='git branch'
alias gisw='git switch'
alias gico='git checkout'
alias gitg='git tag -ma'
alias gipst='git push --follow-tags'
alias gicl='git clone'

alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'

alias ateliercontenu='cd /run/media/lykso/04E4-9A52/Prologin/contenus'
alias resetkb='setxkbmap us -variant altgr-intl -option caps:swapescape'
alias archboxconn='ssh -p 17009 lykso@82.65.142.71'

alias l='ls -al'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

parse_git_bg() {
  if [[ $(git status -s 2> /dev/null) ]]; then
    echo -e "\033[0;31m"
  else
    echo -e "\033[0;32m"
  fi
}

PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;34m\] \w\[$(parse_git_bg)\]$(__git_ps1)\[\033[0;32m\]\$\[\033[0m\] '

source ~/.git-prompt.sh

(cat ~/.cache/wal/sequences &)

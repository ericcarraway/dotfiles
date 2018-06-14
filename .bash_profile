export EDITOR='subl -w'
export NVM_DIR=~/.nvm
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

test -f ~/.git-completion.bash && . $_

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n \[$(tput sgr 0 1)\]\w\[$(tput sgr0)\]\[$(tput setaf 4)\]\$(parse_git_branch)\n\[$(tput bold)\]\[$(tput setaf 2)\] ➜ \[$(tput sgr0)\]"
#export TERM="xterm-color" PS1='\e[0;33m\u\e[0m@\e[0;32m\h\e[0m \e[0;34m\w\n \e[0m\$ '

# change present working directory
function chpwd()
{
  FILE=$PWD/.nvmrc
  if [ -f $FILE ]; then
    nvm use
  fi
}

function cs()
{
  if [ $# -eq 0 ]; then
    # when cd, also do ls
    cd && ls -a && chpwd; # chpwd is nvm use
  else
    cd "$*" && ls -a && chpwd;
  fi
}

alias cd='cs'

source ~/.aliases
source $(brew --prefix nvm)/nvm.sh

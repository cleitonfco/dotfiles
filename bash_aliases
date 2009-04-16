############################################################
## Miscelaneous
############################################################
alias sbrc='source ~/.bashrc'
alias spro='source ~/.profile'
alias sbal='source ~/.bash_aliases'
alias salias='cat ~/.bash_aliases'

############################################################
## List
############################################################

alias l='ls'
alias ll='ls -l'
alias la='ls -al'

############################################################
## Git
############################################################
 
alias g='git'
alias gb='git branch -a -v'
alias gc='git commit'
alias gca='git commit -a'
alias gd='git diff'
alias gl='git pull'
alias glr='git pull --rebase'
alias gp='git push'
alias gs='git status'
alias gg='git log --pretty=oneline'
alias ggs='git log --stat'
alias gh='github'
alias gsl='git shortlog -sn'
alias gw='git whatchanged'
alias gsr='git svn rebase'
alias gsp='git svn dcommit'
 
############################################################
## Ruby
############################################################
 
alias r='rake'
 
############################################################
## Rails
############################################################
 
alias ss='script/server'
alias sg='script/generate'
alias sc='script/console'
alias as='autospec -rails'
alias mrs='mongrel_rails start'
alias tl='tail -f log/development.log'

############################################################
## Extra Functions
############################################################
 
function jus {
  local path="/home/cleitonfco/www"
  if [ -e $path/jus-$1 ]; then
    cd $path/jus-$1/
  else
    echo "Path or project not found"
  fi
}

add-alias ()
{
   local name=$1 value=$2
   echo "alias $name='$value'" >> ~/.bash_aliases
   eval "alias $name='$value'"
   alias $name
}

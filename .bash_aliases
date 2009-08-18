# Shell utilities
alias back='cd $OLDPWD'

# Git
alias g='git status'
alias gb='git branch'
alias gba='git branch -a'
alias ga='git add'
alias gc='git commit -v'
alias gca='git commit -v -a'
#Commit pending changes and quote all args as message
function gg() {
  git commit -v -a -m "$*"
}
alias gco='git checkout'
alias gd='git diff'
alias gdm='git diff master'
alias gh='github'
alias gl='git log'
alias glss='git log --stat --summary'
alias glp='git log --pretty=oneline'
alias gp='git pull'
alias gnp='git -nopushed'
alias grao='git remote add origin '
alias gdh='git diff HEAD^..HEAD'
alias gpom='git push origin master'

# Rails
alias ss='./script/server'
alias sg='./script/generate'
alias sp='./script/plugin install'
alias sc='./script/console'
alias r='rake'
alias rt='rake -T'
alias rmig='rake db:migrate'

# Ruby/Rubygems
alias rv='ruby -v'
alias rge='gem env'
alias rgl='gem list'
alias rgi='gem install'
alias drv='display_ruby_version'
alias crv187='use_ruby_187'
alias crv191='use_ruby_191'
alias crvjr='use_jruby'

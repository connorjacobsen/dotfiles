#
# Personal aliases
#
alias b="bundle"
alias bi="bundle install"
alias bu="bundle update"
alias c="clear"
alias fs="foreman start -f Procfile.dev" # BlockScore
alias fucking="sudo"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gfp="git push -f origin"
alias git="hub"
alias gpm="git push -u origin master"
alias gs="git diff -M -C --cached --name-only | grep '_spec.rb' | xargs rspec || EXIT_STATUS=$?"
alias ni="npm install"
alias p="git push origin"
alias pu="git push -u origin"
alias pull="git pull"
alias push="git push"
alias rc="rails console"
alias rdm="rake db:migrate"
alias rdr="rake db:rollback"
alias rollback="rake db:rollback"
alias rs="rails server"
alias rt="rake test"
alias v="vim +PluginInstall +qall"
alias vimrc="vim ~/.vimrc"
alias vundle="vim +PluginInstall +qall"

#
# Opendoor aliases
#
alias deploy="bin/deploy"
alias pc="bin/checkin/pre-commit"

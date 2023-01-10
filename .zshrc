# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH

eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export ES_JAVA_HOME=/Users/nathan/Library/Java/JavaVirtualMachines/openjdk-15.0.2/Contents/Home

## File Shortcuts ##

alias api="cd ~/Work/kw/api"
alias web="cd ~/Work/kw/web"
alias admin="cd ~/Work/kw/admin-web"
alias core="cd ~/Word/kw/web-core"
alias edit="nano ~/.zshrc"
alias save="source ~/.zshrc"

## Git ##

commitpush(){
  git add .
  git commit -m "$1"
  git push
}

commit(){
  git commit -m "$1"
}

alias gs="git status"
alias add="git add ."
alias co="git checkout"
alias br="git branch"
alias pull="git pull"
alias push="git push"

alias cleanmerged="git branch --merged develop | grep -v "develop" | xargs -n 1 -r git branch -d"
alias cleandeleted="git branch -vv | grep ': gone]' | grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -d"

## JS ##

alias npmd="npm run dev"

## Rails ##

alias rs="rails server"
alias rs4000="bundle exec rails s -p4000"
alias rc="rails console"
alias bi="bundle install"
alias rollback="bundle exec rake db:rollback"
alias migrate="bundle exec rake db:migrate"
alias brspec="bundle exec rspec"
alias load-srspec="bundle exec spring binstub rspec"
alias srspec="bundle exec spring rspec"
alias log="tail -f log/test.log"
alias elastic="ES_JAVA_OPTS='-Xms512m -Xmx512m' elasticsearch"
alias psqlkw="psql -d kw_development"
alias sidekiq="bundle exec sidekiq"

## EMAIL ##
export KW_API_DEVELOPER_EMAIL='nh@kithward.com'

## START MULTIPLE PROCESSES ##
alias localdev="elastic & sidekiq & rs4000"

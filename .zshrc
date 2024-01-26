## File Shortcuts ##

alias edit="code ~/.zshrc"
alias save="source ~/.zshrc"


## GIT ##

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
alias stash="git stash"
alias unstash="git stash apply"
alias delete="git branch --delete"
# delete all local branches that have been merged
alias clean="git branch --merged | grep -v \* | xargs git branch -D"


## GENERAL ##

alias dc="docker compose"


## LIMBLE ##

alias flan='cd ~/dev/limble/flannel'
alias web='cd ~/dev/limble/webApp'
alias auth='cd ~/dev/limble/auth-server'
alias api='cd ~/dev/limble/api'
alias t='cd ~/dev/limble/translations'
alias auto-merge='~/dev/auto-merge.sh'
alias lint='npm run lint:fix'
alias p='npm run prettierAll'
alias run-t='nx run-many --targets=serve --projects=translations-api,translations-web -c development'
alias test='ng test --browsers=ChromeHeadless'
alias mysql='/Applications/XAMPP/bin/mysql'
# alias dbrestore='aws s3 cp s3://limblecmms-developer/db-reap-dev.sql.gz ~/dev/tmp/ && gzcat ~/dev/tmp/db-reap-dev.sql.gz  | mysql -u root reap && rm ~/dev/tmp/db-reap-dev.sql.gz'
alias dbrestore='aws sso login && aws s3 cp s3://limblecmms-developer/backup.sql ~/dev/tmp/backup.sql && mysql -h 127.0.0.1 -u root reap < ~/dev/tmp/backup.sql && rm ~/dev/tmp/backup.sql'
alias lite="ruby -e 'puts [\"Derek\", \"Alex\", \"Yuliia\", \"Jesse\", \"Nathan\"].shuffle'"

# Load Angular CLI autocompletion.
source <(ng completion script)
autoload -Uz compinit && compinit


## NODE ##

alias rmrf='rm -rf .parcel-cache dist node_modules'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


## RAILS ##

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

ex=$( cd "$(dirname "$0")" ; pwd -P )
cd  $ex
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
echo $PATH
gem install bundler -v  '1.17.3'
bundle install
#bundle exec rake db:migrate

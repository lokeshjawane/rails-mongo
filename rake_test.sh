#!/bin/bash
cd /mnt
gem install bundler -v  '1.17.3'
bundle install --path vendor/bundle
bundle exec rake db:drop db:create db:migrate --trace
bundle exec rake test
zip -r /tmp/app-test.zip . -x "*.git*"

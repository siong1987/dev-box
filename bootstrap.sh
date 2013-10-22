#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git vim build-essential
sudo apt-get install -y sqlite3 libsqlite3-dev    # sqllite
sudo apt-get install -y libxslt-dev libxml2-dev   # nokogiri
sudo apt-get install -y libpq-dev                 # postgres
sudo apt-get install -y imagemagick               # imagemagick

# redis
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:rwky/redis
sudo apt-get update
sudo apt-get -y install redis-server

# postgres
sudo apt-get -y install postgresql
sudo -u postgres createuser --superuser $USER

# Clone the rbenv repo from github
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

# Add rbenv to PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'About to install ruby 2.0.0. This will take around 5 minutes...'
rbenv install 2.0.0-p247      # CONTINUE HERE
rbenv rehash
rbenv global 2.0.0-p247

echo 'gem: --no-ri --no-rdoc' >> ~/.gemrc
gem install bundler
rbenv rehash

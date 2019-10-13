#!/bin/bash
echo "сейчас будем устанавливать ruby"
sudo apt-get install -y dirmngr
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
apt-get -f install
sudo apt-get --no-install-recommends install libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
rvm pkg install openssl
rvm install 2.4.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.4.1 --default
gem install bundler -V
ruby -v
bundle -v
#if pgrep "bla bla" ; then echo "found" ; fi

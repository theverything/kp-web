## Install the additional packages ##
sudo apt-get install -y python-software-properties nano git

## Install nodejs ##
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node

## Install MongoDB ##
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo /etc/init.d/mongod start

## Install Ruby ##
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update

## Install npm packages ##
npm install -g naught gulp forever

## Install Gems ##
gem install sass

## Add ENV vars ##
echo "export NODE_ENV=production"

## Install the app ##
cd /home && https://github.com/theverything/kp-web.git kp-web
cd /home && \
    npm install && \
    gulp

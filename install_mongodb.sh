#!/bin/bash
echo "сейчас будем устанавливать mongodb"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv  D68FA50FEA312927
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 4B7C549A058F8B6B
wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u12_amd64.deb
sudo dpkg -i libssl1.0.0_1.0.1t-1+deb8u12_amd64.deb
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y mongodb
sudo mkdir -p /var/lib/mongodb
sudo chmod -R 0777 /data/db
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod

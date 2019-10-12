#!/bin/bash
sudo apt install -y git
git clone https://github.com/ZILosoft/Deploy-ruby-on-Gcloud.git
cd Deploy-ruby-on-Gcloud
chmod +x *.sh
source ./install_mongodb.sh
source ./install_ruby.sh
source ./deploy_programm.sh

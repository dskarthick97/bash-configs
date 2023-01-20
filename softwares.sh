# Will install all the commands and softwares that I use

# To update packages and upgrade softwares
sudo apt-get update

# ohmybash - https://ohmybash.nntoan.com/
# Themes: agnoster, powerline, powerline-multiline, powerline-plain
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# BASH COMMANDS
# locate
sudo apt-get install mlocate

# curl
sudo apt install curl

# jq
sudo apt-get install jq -y

# yq
sudo wget https://github.com/mikefarah/yq/releases/download/v4.9.6/yq_linux_amd64.tar.gz -O - | sudo tar xz && sudo mv yq_linux_amd64 /usr/bin/yq

# pip search command
pip install pip_search

# TOOLS
# python-3.6
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6

# git
sudo apt install git -y
git --version

# aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

# aws sam
wget "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
sha256sum aws-sam-cli-linux-x86_64.zip  # This should output <64-character SHA256 hash value> aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install
sam --version

# aws cdk
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt -y install nodejs

sudo npm install -g aws-cdk -y  # prerequisite is node and npm
cdk --version

sudo npm install -g lighthouse # prerequisite is Node 12 LTS or later and npm
lighthouse --version

# docker and add the user to the docker group
# installing using a repository
# 1. Set up the repository
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg  # adding official docker GPG keys

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null  # To set up a stable repo

# 2. Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# 3. Create the docker group and the user
sudo groupadd docker  # creates a new group
sudo usermod -aG docker $USER
newgrp docker  # log in to a new group

# jdk
sudo apt install default-jre -y
java --version

# mysql
sudo apt-get install mysql-client

# kubernetes - minikube, kubectl

# pyenv
# https://k0nze.dev/posts/install-pyenv-venv-vscode/#linux-debianubuntu

# pyenv-virtualenvwrapper
# https://github.com/pyenv/pyenv-virtualenv

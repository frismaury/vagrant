NVM_VER="0.33.2"
NODE_VER="6.10.1"
GO_VER="1.8.3"
PY_VER="2.7.3"
GIT_USER="frismaury"

echo "Updating system and installing tools"
sudo apt update && sudo apt upgrade -y

sudo apt install -y git

echo "=========================== JS Env stuff"
echo "Installing nvm dependencies"
sudo apt-get install -y build-essential \
                        libssl-dev

echo "Installing nvm v$NVM_VER"
curl https://raw.githubusercontent.com/creationix/nvm/v$NVM_VER/install.sh | bash

echo "Installing node v$NODE_VER"
nvm install v$NODE_VER

echo "=========================== Golang Env stuff"
# Download
# sudo wget https://storage.googleapis.com/golang/go$GO_VER.linux-amd64.tar.gz -P /usr/local/
# sudo tar -xf /usr/local/go$GO_VER.linux-amd64.tar.gz
# sudo rm /usr/local/go$GO_VER.linux-amd64.tar.gz

#if is already in the current dir
sudo tar -xf /vagrant/go$GO_VER.linux-amd64.tar.gz -C /usr/local
mkdir -p /vagrant/Code/go/bin \
         /vagrant/Code/go/src/github.com/$GIT_USER

# Adding go stuff to the path
echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bashrc
echo "export GOPATH=/vagrant/Code/go/src" >> /home/vagrant/.bashrc
echo "export GOROOT=/usr/local/go" >> /home/vagrant/.bashrc

echo "FINAL STEPS ========== "
echo "cd /vagrant" >> /home/vagrant/.profile
echo "========= FINISH ========== "

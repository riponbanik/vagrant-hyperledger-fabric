# Load nvm
. $HOME/.nvm/nvm.sh

# Install Composer
npm install -g composer-cli@0.20
npm install -g composer-rest-server@0.20
npm install -g generator-hyperledger-composer@0.20
npm install -g yo

# Install composer
npm install -g composer-playground@0.20

# Install Fabric
mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvf fabric-dev-servers.tar.gz

export FABRIC_VERSION=hlfv12
sudo ./downloadFabric.sh

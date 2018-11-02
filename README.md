# vagrant-hyperledger-fabric
Build Hyperledger Fabric for Development

## Add the vagrant box
vagrant box add bento/ubuntu-16.04

## Install the Fabric
```
vagrant up --provider hyperv
or
vagrant up --provider virtualbox
```

## Run the provision if it fails during installation
```
vagrant provision
```

## Log into ssh and start the fabric
```
vagrant ssh
cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv12
./startFabric.sh
```

## When you're done, you can shut down the cluster using
```
vagrant destroy -f
```


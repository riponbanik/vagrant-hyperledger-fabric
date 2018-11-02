# Build box
vagrant up --provider hyperv

# Provision with specifc shell provision
vagrant provision --provision-with install_hlfv12

# SSH 
vagrant ssh

# Destroy vm
vagrant destroy


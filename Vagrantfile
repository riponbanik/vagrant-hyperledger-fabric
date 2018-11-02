# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.username = "vagrant"
  config.ssh.insert_key = false

  config.vm.define :hlfv12 do |v| 	  
	  #config.vm.provider "hyperv"
	  #config.vm.network "public_network"
	  #config.vm.synced_folder ".", "/vagrant", disabled: true
	  #config.vm.synced_folder ".", "/vagrant", type: "smb"
      #config.vm.synced_folder ".", "/vagrant", create: true, mount_options: ["vers=3.0"] 
	  
    config.vm.provider "hyperv" do |h, override|
	      h.cpus = 2
	      h.memory = 512
	      h.maxmemory = 1024
		  h.enable_virtualization_extensions = true
		  h.differencing_disk = false
		  override.vm.network "public_network"
	  end   

	config.vm.provider :virtualbox do |v, override|		
		v.customize ["modifyvm", :id, "--cpus", 2]
		v.customize ['modifyvm', :id, '--memory', '512']    		
		v.gui = false
		override.vm.network "private_network", type: "dhcp"
    end	     

    config.vm.provision "install_prereq", type: "shell", path: "prereq_ubuntu.sh", privileged: false
	config.vm.provision "install_hlfv12", type: "shell", path: "install_hlfv12.sh", privileged: false
	  
  end
end
#-------------------------------------------------------------------------------
# Project     | spark-vagrant
# Module      | vagrant configuration file
# Author      | sameh kamal
# Description | defining virtual machine configuration and specification
#-------------------------------------------------------------------------------
Vagrant.configure(2) do |config|

  # use ubuntu trusty 14.4.4 64-bit
  config.vm.box = "ubuntu/trusty64"

  # configure network  
  # config.vm.network "public_network", ip: "172.16.202.196", bridge: 'enp0s25'

  # mount examples into the box machine on /example
  config.vm.synced_folder "./example", "/example"

  # forward port 8080 from box to host machine
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Customize machine memory
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  # use shell provisioning from external script
  config.vm.provision "shell", path: "./provision/bootstrap.sh"
end

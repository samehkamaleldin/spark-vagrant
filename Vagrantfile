#-------------------------------------------------------------------------------
# Project     | spark-vagrant
# Module      | vagrant configuration file
# Author      | sameh kamal
# Description | defining virtual machine configuration and specification
#-------------------------------------------------------------------------------
Vagrant.configure(2) do |config|
  # use ubuntu trust
  config.vm.box = "centos7"

  # config.vm.network "public_network", ip: "172.16.202.196", bridge: 'enp0s25'
  config.vm.synced_folder "~/work", "/blabla"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Customize machine memory
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  # use shell provisioning from external script
  config.vm.provision "shell", path: "./provision/bootstrap.sh"
end

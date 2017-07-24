# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.hostname = "soulsociety"

  config.vm.provider "virtualbox" do |v|
    # to asign a custom name in virtual box:
    v.name = "ubuntu14x64"
    v.memory = 512
    v.cpus = 1
  end

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  # to asign a custom ip in your network
  #config.vm.network "public_network", ip: "10.0.1.225"

  config.vm.provision "shell", path: "config.sh"
end

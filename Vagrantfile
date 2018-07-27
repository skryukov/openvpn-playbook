# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-18.04"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.linked_clone = true
  end

  config.vm.define "node1" do |app|
    app.vm.hostname = "node1.test"
    app.vm.network :private_network, ip: "10.0.5.4",
        virtualbox__intnet: true
    app.vm.network :private_network, ip: "10.0.4.4"
  end

  config.vm.define "node2" do |app|
    app.vm.hostname = "node2.test"
    app.vm.network :private_network, ip: "10.0.5.5",
        virtualbox__intnet: true
  end
end

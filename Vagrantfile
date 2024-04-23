# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "base"

  # configure and provision the master vm
  config.vm.define "master" do |master|
    master.vm.box = "generic/ubuntu2004"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.56.0"

    master.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu-master"
      vb.gui = false
      vb.memory = "1024"
    end

    master.vm.provision :shell, path: "master_provision.sh"

    master.vm.provision "ansible" do |ansible| # execute ansible playbook
      ansible.verbose = "v"
      ansible.playbook = "master_playbook.yaml"
    end
  end

  # configure and provision first slave
  config.vm.define "slave1" do |slave1|
    slave1.vm.box = "bento/ubuntu-16.04"
    slave1.vm.network "private_network", ip: "192.168.56.10"

    slave1.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu-slave1"
      vb.gui = false
      vb.memory = "1024"
    end

    slave1.vm.provision :shell, path: "slaves_provision.sh"
    
    slave1.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "slaves_playbook.yaml"
    end
  end

end

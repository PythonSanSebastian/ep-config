# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :manager, :autostart => true do |node|
    node.vm.box = 'debian/jessie64'
    node.vm.hostname = "manager"
    node.vm.network :private_network, ip: "10.0.11.10", hostsupdater: "skip"
    node.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    node.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.gui = false
      vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    end
    node.vm.provision :shell, path: "vagrant/manager.sh", privileged: false
  end
end
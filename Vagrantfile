# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = "debian-7.2"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/197673519/debian-7.2.0.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 22, host: 2200
  config.vm.network :private_network, ip: "192.168.33.10"

  config.ssh.forward_agent = true
  config.vm.synced_folder "../", "/vagrant"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    #chef.data_bags_path = "../my-recipes/data_bags"
    #chef.add_recipe "mysql"
    chef.add_role "jenkins"
  end
end


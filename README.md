bundle install
vagrant plugin install vagrant-berkshelf

Installing the 'vagrant-berkshelf' plugin. This can take a few minutes...
Installed the plugin 'vagrant-berkshelf (1.3.4)'!

vagrant plugin install vagrant-omnibus

Vagrant.configure("2") do |config|

  config.omnibus.chef_version = :latest

  ...

end

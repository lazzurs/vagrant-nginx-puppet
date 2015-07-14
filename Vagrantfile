# -*- mode: ruby -*-
# vi: set ft=ruby :

@required_plugins = [ 'vagrant-serverspec' ]

require_relative "vagrant_requires.rb"


Vagrant.configure(2) do |config|

  #Template box from puppetlabs
  config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"

  #Port nginx should be listening on
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  #Set memory for the box
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  #Run puppet provisioner
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules"
  end

  #Use serverspec to test what puppet has done
  config.vm.provision :serverspec do |spec|
    spec.pattern = 'spec/*_spec.rb'
  end

end

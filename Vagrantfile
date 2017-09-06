# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "box-cutter/ubuntu1604"

  config.vm.provider :virtualbox do |vb|
      vb.name = "config"
      vb.gui = false
  end

  config.vm.provision "shell", path: "install_icinga.sh"
  config.vm.network "forwarded_port", guest: 5665, host: 5665
end

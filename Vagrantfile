# -*- mode: ruby -*-
# vi: set ft=ruby :

ICINGA_VERSION = "2.6.3-1~ppa1~xenial1"
# ICINGA_VERSION = "2.7.0-1.xenial"

Vagrant.configure("2") do |config|
  config.vm.box = "box-cutter/ubuntu1604"

  config.vm.provider :virtualbox do |vb|
      vb.name = "config"
      vb.gui = false
  end

  config.vm.provision "shell", path: "install_icinga.sh", env: {"VERSION" => ICINGA_VERSION}
  config.vm.network "forwarded_port", guest: 5665, host: 5665
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.provision :shell, :inline => "su -c '/vagrant/bootstrap.sh' vagrant"
  config.vm.network :forwarded_port, host: 3000, guest: 3000

  config.vm.synced_folder "/Users/siong1987/Projects/", "/home/vagrant/Projects/"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end
end

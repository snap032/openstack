# -*- mode: ruby -*-
# vi: set ft=ruby :

#ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  # Ceph-controller
  config.vm.define "openstack" do |openstack|
    openstack.vm.box = "centos/7"
    openstack.vm.hostname = "openstack"
    openstack.vm.network "public_network",
      use_dhcp_assigned_default_route: true
    openstack.vm.provision "shell", path: "script.sh"
    openstack.vm.provider "virtualbox" do |v|
      v.name = "openstack"
      v.memory = 5072
      v.cpus = 2
    end
  end
end

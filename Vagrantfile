Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.disksize.size = "70GB"
  config.vm.hostname = "openstack-controller"
  config.vm.network "public_network",
   bridge: "eno1",
   ip: "10.1.99.11",
   gateway: "10.1.99.1"
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 4
    v.name = "openstack-controller"
  end
   config.vm.provision "shell", path: "initial-devstack-setup.sh"
end

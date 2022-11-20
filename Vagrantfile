# -*- mode: ruby -*-
# vi: set ft=ruby  :

VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

machines = {
  "master" => {"memory" => "724", "cpu" => "1", "ip" => "3", "image" => "devopsbox/ubuntu-20.04"},
  "node-01" => {"memory" => "724", "cpu" => "1", "ip" => "6", "image" => "devopsbox/ubuntu-20.04"},
  "node-02" => {"memory" => "724", "cpu" => "1", "ip" => "9", "image" => "devopsbox/ubuntu-20.04"}
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "private_network", ip: "192.168.56.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        
      end
      machine.vm.provision "shell", path: "docker.sh"
      
      if "#{name}" == "master"
        machine.vm.provision "shell", path: "master.sh"
      else
        machine.vm.provision "shell", path: "worker.sh"
      end

    end
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/trusty64"
 config.vm.provision "shell", path: "python.sh"
 config.vm.provider "virtualbox" do |vb|  
 end
 
 config.vm.define "db" do |db|
   db.vm.hostname = 'redis'
   db.vm.network :private_network, ip: "10.127.0.30"
   db.vm.box = "ubuntu/xenial64"
   db.vm.provider "virtualbox" do |vb|
     vb.memory = "256"
     vb.cpus = "1"
   end
   db.vm.provision "ansible" do |ansible|
     ansible.playbook = "bd.yml"
   end
 end

 config.vm.define "php" do |php|
   php.vm.hostname = 'php'
   php.vm.network :private_network, ip: "10.127.0.20"
   php.vm.box = "ubuntu/xenial64"
   php.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
     vb.cpus = "1"
   end
   php.vm.provision "ansible" do |ansible|
     ansible.playbook = "php.yml"
   end
 end

 config.vm.define "web" do |web|
   web.vm.hostname = 'nginx'
   web.vm.network :private_network, ip: "10.127.0.10"
   web.vm.box = "ubuntu/xenial64"
   web.vm.provider "virtualbox" do |vb|
     vb.memory = "512"
     vb.cpus = "2"
   end
   web.vm.provision "ansible" do |ansible|
     ansible.playbook = "www.yml"
   end
 end
end

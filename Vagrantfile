# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "httpd-server" do |httpd|
    httpd.vm.box = "centos/7"
    httpd.vm.hostname = "httpd.localdomain"
    httpd.vm.network "private_network", type: "dhcp"
    httpd.vm.provision "shell", inline: "yum -y install httpd;systemctl enable httpd;systemctl start httpd;mv /vagrant/*.ZIP /var/www/html;ip a"
    httpd.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
end


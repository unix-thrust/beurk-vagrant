# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
NAME=`uname`
if [[ $NAME == "FreeBSD" ]] ; then
    export ASSUME_ALWAYS_YES=YES 
    pkg upgrade && pkg install python
    ln -sf /usr/local/bin/python /usr/bin/python
fi
SCRIPT

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.provision "shell", inline: $script
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
  end

  ## Foward BEURK port for testing purpose
  config.vm.network "forwarded_port", guest: 3005, host: 3005, host_ip: "127.0.0.1", auto_correct: true

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.define "debian7" do |debian7|
    debian7.vm.box = "deb/wheezy-amd64"
    debian7.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "debian8" do |debian8|
    debian8.vm.box = "deb/jessie-amd64"
    debian8.vm.network "private_network", ip: "192.168.33.20"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.network "private_network", ip: "192.168.33.30"
  end

  config.vm.define "fedora21" do |fedora21|
    fedora21.vm.box = "hansode/fedora-21-server-x86_64"
    fedora21.vm.network "private_network", ip: "192.168.33.40"
  end
  
  config.vm.define "centos" do |centos|
    centos.vm.box = "relativkreativ/centos-7-minimal"
    centos.vm.network "private_network", ip: "192.168.33.50"
  end

  config.vm.define "freebsd" do |freebsd|
    freebsd.vm.box = "robin/freebsd-10"
    freebsd.vm.network "private_network", ip: "192.168.33.60"
    freebsd.vm.synced_folder "./project", "/home/vagrant/project", disabled: true
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./project", "/home/vagrant/project"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end

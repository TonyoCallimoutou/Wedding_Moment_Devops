# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'dotenv'
Dotenv.load('.env')

machines=[
  {
    :hostname => "machine1",
    :ip => ENV["IP_VM"],
    :box => "hashicorp/bionic64",
    :ram => 2048,
    :cpu => 2
  }
]


# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  machines.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.vm.network "forwarded_port", guest: ENV["PORT_FRONT"], host: ENV["PORT_FRONT"]
      node.vm.network "forwarded_port", guest: ENV["PORT_BACK"], host: ENV["PORT_BACK"]
      node.vm.network "forwarded_port", guest: ENV["PORT_JENKINS"], host: ENV["PORT_JENKINS"]
      node.vm.network "forwarded_port", guest: ENV["PORT_PMA"], host: ENV["PORT_PMA"]

      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
      end

      config.vm.provision "shell", inline: <<-SHELL
        echo 'export IP_VM='#{ENV['IP_VM']}'' | sudo tee -a /etc/environment
        echo 'export GITHUB_TOKEN='#{ENV['GITHUB_TOKEN']}'' | sudo tee -a /etc/environment
        echo 'export GITHUB_USERNAME='#{ENV['GITHUB_USERNAME']}'' | sudo tee -a /etc/environment
        echo 'export NAME_FRONT_REPO_GIT='#{ENV['NAME_FRONT_REPO_GIT']}'' | sudo tee -a /etc/environment
        echo 'export NAME_BACK_REPO_GIT='#{ENV['NAME_BACK_REPO_GIT']}'' | sudo tee -a /etc/environment
        echo 'export PORT_FRONT='#{ENV['PORT_FRONT']}'' | sudo tee -a /etc/environment
        echo 'export PORT_BACK='#{ENV['PORT_BACK']}'' | sudo tee -a /etc/environment
        echo 'export PORT_JENKINS='#{ENV['PORT_JENKINS']}'' | sudo tee -a /etc/environment
        echo 'export PORT_PMA='#{ENV['PORT_PMA']}'' | sudo tee -a /etc/environment
        echo 'export MYSQL_ROOT_PASSWORD='#{ENV['MYSQL_ROOT_PASSWORD']}'' | sudo tee -a /etc/environment
        echo 'export MYSQL_DATABASE='#{ENV['MYSQL_DATABASE']}'' | sudo tee -a /etc/environment
        echo 'export MYSQL_USER='#{ENV['MYSQL_USER']}'' | sudo tee -a /etc/environment
        echo 'export MYSQL_PASSWORD='#{ENV['MYSQL_PASSWORD']}'' | sudo tee -a /etc/environment
        echo 'export IP_MYSQL='#{ENV['IP_MYSQL']}'' | sudo tee -a /etc/environment
        echo 'export IP_SUBNET='#{ENV['IP_SUBNET']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_API_KEY='#{ENV['FIREBASE_API_KEY']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_AUTH_DOMAIN='#{ENV['FIREBASE_AUTH_DOMAIN']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_PROJECT_ID='#{ENV['FIREBASE_PROJECT_ID']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_STORAGE_BUCKET='#{ENV['FIREBASE_STORAGE_BUCKET']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_MESSAGING_SENDER_ID='#{ENV['FIREBASE_MESSAGING_SENDER_ID']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_APP_ID='#{ENV['FIREBASE_APP_ID']}'' | sudo tee -a /etc/environment
        echo 'export FIREBASE_MEASUREMENT_ID='#{ENV['FIREBASE_MEASUREMENT_ID']}'' | sudo tee -a /etc/environment
      SHELL

      node.vm.provision "ansible" do |ansible|  
        ansible.playbook = "./ansible/playbooks/playbook.yml"
        ansible.extra_vars = {
          GITHUB_TOKEN: ENV["GITHUB_TOKEN"],
          GITHUB_USERNAME: ENV["GITHUB_USERNAME"],
          NAME_FRONT_REPO_GIT: ENV["NAME_FRONT_REPO_GIT"],
          NAME_BACK_REPO_GIT: ENV["NAME_BACK_REPO_GIT"],
        }
      end
    end

  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

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
  # config.vm.synced_folder "../data", "/vagrant_data"

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

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end

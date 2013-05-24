# -*- mode: ruby -*-
# vi: set ft=ruby :

# Don't auto-update VM Box additions (if VBGuest plugin is installed)
if defined? VagrantVbguest::Config
	VagrantVbguest::Config.auto_update = false
end

Vagrant.configure("1") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :hostonly, "10.0.0.5"
  config.vm.host_name = "development.localhost"
    
  config.vm.customize ["modifyvm", :id, "--cpus", 1]
  config.vm.customize  ["modifyvm", :id, "--memory", 512]

  config.ssh.forward_agent = true
  # config.ssh.username = "csharma"
  # config.ssh.private_key_path = "config/ssh/id_vagrant"

  config.vm.forward_port 22, 10022, :auto => true
  config.vm.forward_port 80, 10080, :auto => true

  config.vm.boot_mode = :headless
  
  # Provision with Chef Solo
  config.vm.provision :chef_solo do |chef|
    chef.add_role "developer"
    chef.roles_path = "config/chef/roles"

    chef.data_bags_path = "config/chef/databags"
    chef.cookbooks_path = ["cookbooks", "config/chef/cookbooks"]
  end
end

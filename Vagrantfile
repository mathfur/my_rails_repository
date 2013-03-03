# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "fedora64"
  config.vm.box_url = "http://dl.dropbox.com/u/6002490/vagrant/beefymiracle64.box"
  #config.vm.boot_mode = 'gui'
  config.vm.forward_port 80, 8080
  config.vm.host_name = "sample"

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.cookbooks_path = ["cookbooks"] #, "cookbooks-src"]

    chef.add_recipe "main"
    chef.add_recipe "ruby_build"
    chef.add_recipe 'build-essential'
    chef.add_recipe "yum"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "rbenv::system"
    chef.add_recipe "mysql"
    chef.add_recipe "mysql::client"
    chef.add_recipe "mysql::server"
    chef.add_recipe "nodejs"
    chef.add_recipe "nginx"
    # chef.add_recipe "unicorn"

    chef.json = {
      "mysql" => {
        'server_debian_password' => 'vagrant',
        'server_root_password' => 'vagrant',
        'server_repl_password' => 'vagrant'
      }
    }

# 失敗
    #chef.add_recipe "apache2"
    #chef.add_recipe "passenger_apache2"
  end
end


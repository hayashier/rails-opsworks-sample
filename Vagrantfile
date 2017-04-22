Vagrant.configure("2") do |config|
  config.vm.box = "centos6.7"
  config.vm.box_url = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]
    chef.json = {
      nginx: {
        env: ["ruby"]
      }
    }
    chef.run_list = %w[
      recipe[yum-epel]
      recipe[nginx]
      recipe[ruby-env]
      recipe[nodejs]
    ]
  end
end

  # Shamelessly stolen from the previous Fortran meetup
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "14.04"

  # Setup the dev domain name
  config.vm.network "private_network", ip: "172.31.254.254"
  config.vm.hostname = "lisp-sandbox"

  # Setup the server root
  config.vm.synced_folder "./", "/home/vagrant"

  # Install fortran compiler
  config.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y git guile-2.0 guile-2.0-doc clojure1.4 sbcl sbcl-doc sbcl-source"

  # Configure VirtualBox
  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.name = "lisp-sandbox"
    virtualbox.memory = 1024
    virtualbox.cpus = 1
    virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end

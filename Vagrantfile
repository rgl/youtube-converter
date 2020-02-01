Vagrant.configure(2) do |config|
  config.vm.box = "windows-2019-amd64"
  config.vm.provider :libvirt do |lv, config|
    lv.memory = 3*1024
    lv.cpus = 2
    lv.cpu_mode = "host-passthrough"
    lv.keymap = "pt"
    # replace the default synced_folder with something that works in the base box.
    # NB for some reason, this does not work when placed in the base box Vagrantfile.
    config.vm.synced_folder ".", "/vagrant", type: "smb", smb_username: ENV["USER"], smb_password: ENV["VAGRANT_SMB_PASSWORD"]
  end
  config.vm.provider "virtualbox" do |vb|
    vb.linked_clone = true
    vb.cpus = 2
    vb.memory = 3*1024
    vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
  end
  config.vm.provision "shell", path: "provision/ps.ps1", args: "provision-choco.ps1"
  config.vm.provision "shell", path: "provision/ps.ps1", args: "provision-base.ps1"
end

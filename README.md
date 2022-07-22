# Vagrant environments

### Create Virtual network / switch for vagrant VMS
```
.\util\vSwitch.ps1
```

### Create and SSH to Vagrant VM
Add required files (see the **_example** templates for format)
- `./util/.gitconfig `(`.gitconfig_example`)
- `./activegate_lab/scripts/install_activegate.sh` (`install_activegate_example.sh`)
```
cd [activegate_lab | dev_base]
vagrant up
vagrant ssh
```

### VSCODE remote connection
- `vagrant ssh-config` -> append to  `~/.ssh/config` file (so you can run `ssh dev` or `ssh activegate`)
- Then from VScode (F1 -> remote connect to host)
- May need to increase the count in `/proc/sys/fs/inotify/max_user_watches` (e.g. set it to 524288)
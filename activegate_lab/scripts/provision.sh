# Utils
yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
yum -y update
yum install -y epel-release
yum install -y yum-utils
yum install -y dnf-plugins-core curl git vim wget dos2unix
dos2unix .vimrc
dos2unix .gitconfig
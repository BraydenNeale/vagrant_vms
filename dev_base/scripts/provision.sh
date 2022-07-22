# Utils
yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
yum -y update
yum install -y epel-release
yum install -y yum-utils
yum install -y dnf-plugins-core curl git vim wget dos2unix
yum groupinstall -y "Development Tools"
yum install -y openssl-devel libffi-devel bzip2-devel
dos2unix .vimrc
dos2unix .gitconfig

#  Docker
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl start docker
systemctl enable docker
groupadd docker
usermod -aG docker vagrant

# Python 3.10.5
yum install -y openssl11-devel
sed -i 's/PKG_CONFIG openssl /PKG_CONFIG openssl11 /g' configure
wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz
tar xvf Python-3.10.5.tgz
(cd ./Python-3.10.5 && ./configure --enable-optimizations)
(cd ./Python-3.10.5 && make altinstall)
echo $(python3.10 --version)
echo $(pip3.10 --version)

# React + Typescript
wget https://nodejs.org/dist/v16.15.1/node-v16.15.1-linux-x64.tar.xz
tar --strip-components 1 -xf node-v* -C /usr/local
echo $(node --version)
echo $(npm -v)
npm install -g typescript
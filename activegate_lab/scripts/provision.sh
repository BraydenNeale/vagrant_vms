# Utils
yum -y update
yum install -y epel-release
yum install -y yum-utils
yum install -y dnf-plugins-core curl git vim wget
curl -o /home/vagrant/.vimrc https://raw.githubusercontent.com/BraydenNeale/vimrc/master/.vimrc

# #  Docker
# yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
# systemctl start docker
# systemctl enable docker
# groupadd docker
# usermod -aG docker vagrant

# Podman
# yum install -y podman
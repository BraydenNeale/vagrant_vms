#!/bin/sh
# Set Static IP Address

# cat << EOF | sudo tee /etc/sysconfig/network-scripts/ifcfg-eth0
cat << EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
DEVICE=eth0
BOOTPROTO=none
ONBOOT=yes
PREFIX=24
IPADDR=192.168.50.6
GATEWAY=192.168.50.1
DNS1=8.8.8.8
DNS2=1.1.1.1
EOF

#systemctl restart network
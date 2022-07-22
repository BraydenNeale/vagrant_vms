# Create Private Network Hyper-V switch (192.168.50.0/24)
New-VMSwitch -SwitchName "VagrantSwitch" -SwitchType Internal
New-NetIPAddress -IPAddress 192.168.50.1 -PrefixLength 24 -InterfaceAlias "vEthernet (VagrantSwitch)"
New-NetNAT -Name "VagrantSwitch" -InternalIPInterfaceAddressPrefix 192.168.50.0/24

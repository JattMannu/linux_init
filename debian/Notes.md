

```
root@debian:/home/mannu# cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

#auto wlp3s0
#iface wlp3s0 inet dhcp
#wpa-essid SINGTEL-3262
#wpa-psk XXXX

```

Network Manager:
```
apt install network-manager

nmcli  -> run CLI commands
nmtui -> GUI
```


Search and uninstall Dpkg:
```
# To Find all the packages
dpkg -l | grep network  
# To uninstall all the packages
apt remove --purge  wicd-daemon python-wicd wicd-gtk
```

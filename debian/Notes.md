

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


Make sure the source.list's is contri and nonfree on
Install wifi firmware: 
/etc/apt/sources.list
```
deb http://deb.debian.org/debian/ buster main contrib non-free
deb-src http://deb.debian.org/debian/ buster main contrib non-free
```
```
sudo apt install firmware-iwlwifi 
```

External harddisk booting:

  If a bootable Debian Installer image is not available simply copy \EFI\debian\grubx64.efi to \EFI\boot\bootx64.efi using whatever means are available (other operating system, connect the storage device to a different computer, etc.).

  As the name implies, installing grub-efi to the removable media path can be useful (or even necessary) for portable Debian installations on removable media.

https://wiki.debian.org/UEFI#Booting_a_UEFI_machine_normally


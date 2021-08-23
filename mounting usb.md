# How to Mount a USB Drive in Debian

```
sudo fdisk -l
```

```
# sudo mkdir /media/<mountpoint_name>
sudo mkdir /media/usb0
```

```
#sudo mount <device_name> <mountpoint_directory>
sudo mount /dev/sda2  /media/usb0
```



### Unmounting 

```
sudo umount <device_name> 
OR
sudo umount <mountpoint_directory>

sudo umount /media/usb0
```
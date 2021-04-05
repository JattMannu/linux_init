# Install xfec

# sudo apt-get install xubuntu-desktop
sudo apt update
sudo apt install xfce4 xfce4-goodies


# Install VNC
sudo apt-get install -y x11vnc
x11vnc -forever -display :0 -usepw

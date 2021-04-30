# Install xfec
sudo apt update

# Install VNC
sudo apt-get install -y x11vnc
x11vnc -forever -display :0 &

# Install xfec
sudo apt update

# Install VNC
sudo apt-get install -y x11vnc
x11vnc -forever -display :0 &


sudo ufw allow 8001/udp
sudo ufw allow 8001/tcp
sudo ufw allow 5900/tcp

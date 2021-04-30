# Install xfec
sudo apt update

# Install VNC
sudo apt-get install -y x11vnc
x11vnc -forever -display :0 &


sudo ufw allow 5005/udp
sudo ufw allow 5005/tcp
sudo ufw allow 5900/tcp



java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -jar bin/current/Launchpad.jar -fs -ClientCommsEnable

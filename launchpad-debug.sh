# Install xfec
sudo apt update

# Install VNC
sudo apt-get install -y x11vnc smbclient
# smbclient //192.168.1.68/sambashare -U samba

x11vnc -forever -display :0 &


sudo ufw allow 5005/udp
sudo ufw allow 5005/tcp
sudo ufw allow 5900/tcp


sed 's/java -jar/java -Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=y -jar/g' /home/structo/bin/current/run.sh 

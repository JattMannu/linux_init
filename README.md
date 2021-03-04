# linux_init
Setup the Linux machine to my preference



Find Chrome 
```wmctrl -a Chrome```





 ```if [[ $(wmctrl -a tilix) -eq 1 ]]; then echo "error"; else echo "no_error"; fi```
 
 ##  Applications
 ### Tilix
 ```if [[ $(wmctrl -a tilix) -eq 1 ]]; then tilix; else wmctrl -a Tilix; fi```

### Chromi
```if [[ $(wmctrl -a Chromi) -eq 1 ]]; then chromium; else wmctrl -a Chromi; fi```


```
$(wmctrl -a Chromi) ||  test $? -eq 0 || echo "something bad happened"
$(wmctrl -a Chromi) ||  test $? -eq 0 || chromium
```


### Making Shortcuts
github.desktop

[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=chromium-browser --app=https://github.com
Name=GitHub
Comment=GitHub
Icon=/snap/skype/23/usr/share/icons/hicolor/256x256/apps/skypeforlinux.png

save file in /usr/share/applications
then alt+f2 and search


## Mouse

```
xinput set-prop "Lite-On Tech Lenovo USB Travel Keyboard with Ultra Nav Mouse" "libinput Scroll Method Enabled" 0, 0, 1
```


## SDK Manager
https://sdkman.io/

```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
```
Install Gradle
```
sdk install gradle 6.0.1
```

Step 3. Configure your system environment
Linux & MacOS users
Configure your PATH environment variable to include the bin directory of the unzipped distribution, e.g.:

 ``` 
 $ export PATH=$PATH:/opt/gradle/gradle-6.0.1/bin
 ```


## Install Move mouse via head

youtube.com/watch?v=LwdPrGRBhWA

```
https://github.com/Cat5TV/eviacam
```
location of the file location : /usr/local/bin/eviacam 


## Mouse Click

### Left click
```
xdotool click 1
```
### Send keys to window
```
xdotool type --window 58720267  asd
```
### Get selected window
```
xdotool selectwindow 
```
Then click on the window

# Commands

```
sudo shutdown -h now
```



# Run on startup 
https://kvz.io/schedule-tasks-on-linux-using-crontab.html

```
crontab -e
```


# Which Linux distro is installed?
If it is a debian based system, you could do
```
cat /etc/*_version
```

or for a Red Hat or CentOS based system, you could try (this is working on Red Hat Enterprise Linux-7):
```
cat /etc/*-release
```


# Uninstall a apt-get package

```
dpkg --list
sudo apt-get remove package-name
sudo apt-get purge package-name
sudo apt-get autoremove
```


# Play youtube playlist via terminal

```
youtube-dl --get-url  PLxTBN7kyPJW1xMTDgkpdw1TP6XV2syDdn | xargs -n 1 mpv --no-vid 
youtube-dl --get-url  PLxTBN7kyPJW1xMTDgkpdw1TP6XV2syDdn | xargs -L 1 mpv --no-vid 

FILL is keyword
 cat ./playlist.txt |  xargs -l1 -p -0 -I FILL  echo 'EXT FILL '
```

PLxTBN7kyPJW1xMTDgkpdw1TP6XV2syDdn is the playlistId


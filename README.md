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


# Commands

```
sudo shutdown -h now
```

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

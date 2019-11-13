# linux_init
Setup the Linux machine to my preference



Find Chrome 
```wmctrl -a Chrome```





 ```if [[ $(wmctrl -a tilix) -eq 1 ]]; then echo "error"; else echo "no_error"; fi```
 ```if [[ $(wmctrl -a tilix) -eq 1 ]]; then tilix; else wmctrl -a Chrome; fi```

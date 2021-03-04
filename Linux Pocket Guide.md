

Count the number of lines of a given file .

```wc -l myfile```

```wc -l myfile myfile2```    Count lines in two files

Display a calendar for April 2017:


→ cal apr 2017

List the contents of the /bin directory, which contains many
commands:


→ ls /bin

Count the number of visible items in your home directory
(represented here by a special variable HOME that we’ll discuss
later):


→ ls $HOME | wc -l

See how much space is used on a partition of your hard disk:


→ df -h /


#### The Shell Versus Programs
When you run a command, it might invoke a Linux program
(like who), or instead it might be a built-in command, a feature
of the shell itself. You can tell the difference with the type command:

```→ type who```
who is /usr/bin/who

```→ type cd```
cd is a shell builtin



#### Get files usage 
 
```
du -m | awk '$1 > 100' | awk '{print $0}' | sort -n
```

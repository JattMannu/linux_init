

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

#### flock 

Do you ever need to ensure that only one copy of a program
runs at a time on your computer? For example, if you run auto‐
matic backups every hour using a command like rsync, there’s
a slight chance that a previous backup might still be running
when the next backup launches. The flock command solves
this sort of problem. It prevents a command, such as a backup
script, from running concurrently with itself. If you try to run
two copies of the command at once, the second will fail. For
example, this rsync command, when run with flock, will
instantly fail if another instance of the same command is
already running:

```
→ flock -n /tmp/mylock rsync ...
```

To see flock in action, open two shell windows and run the fol‐
lowing command in each shell, one at a time (we’ll use the
sleep command as a demonstration, which does nothing but
wait for a given number of seconds):

```
→ flock -n /tmp/mylock sleep 60
```

### Crontab


@reboot /home/mannu/Documents/startup.sh


crontab
crontab [options] [file]
The crontab command, like the at command, schedules jobs
for specific times. However, crontab is for recurring jobs, such
as “Run this command at midnight on the second Tuesday of
each month.” To make this work, you edit and save a file (called
Scheduling Jobs | 155
your crontab file), which automatically gets installed in a system
directory (/var/spool/cron). Once a minute, a Linux process
called cron wakes up, checks your crontab file, and executes
any jobs that are due.
```
→ crontab -e Edit your crontab file in your default editor ($VISUAL).
```

```
→ crontab -l Print your crontab file on standard output.
```

```
→ crontab -r Delete your crontab file.
```

```
→ crontab myfile Install the file myfile as your crontab file.
```



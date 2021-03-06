

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


### User Account Management

```useradd``` Create an account.
```userdel``` Delete an account.
```usermod``` Modify an account.
```passwd``` Change a password.
```chfn``` Change a user’s personal information.
```chsh``` Change a user’s shell


### Action APT command
1. Search for a package that meets your needs ```apt-file search package_name```
1. Check if a package is installed ```dpkg -s package_name```
1. Download a package but don’t install it ```apt-get -d package_name```
1. Download and install a package ```sudo apt-get install package_name```
1. Install a package file ```dpkg -i package_file.deb```
1. Learn about a package ```apt-cache show package_name```
1. List the contents of a package | ```dpkg -L package_name```
1. Discover which package an installed file belongs to | ```dpkg -S /path/to/file```
1. Update an installed package ```sudo apt-get upgrade package_name```
1. Remove an installed package ```sudo apt-get remove package_name```
1. List all packages installed on the system ```dpkg -l```
1. Check for updates for all packages on the system ```sudo apt-get -u upgrade```
1. Update all packages on the system (to include kernel packages, replace upgrade by dist-upgrade) ```sudo apt-get upgrade```




### w
Display who is logged into the system and what process executed by them.

```
$w
```

Selection_023

for help

```
$w -h
```

for current user

```
$w <username>
```



#### nmon
Nmon or nigel’s monitor is a tool which displays performance information of the system.
```
$ sudo apt-get install nmon
$ nmon
```

nmon can dump information related to netwrok, cpu, memory or disk uses.

```
nmon cpu info (press c)
nmon network info (press n)
nman disk info (press d)
```


#### ncdu
A Command utility is a cursor based version of ‘du’,  this command is used to analyze disk space occupied by various directories.

```
$apt-get install ncdu
$ncdu /
```


### slurm
A command line utility used for command based network interface bandwidth monitoring, it will display ascii based graphic.

```
$ apt-get install slurm
Examples:

$ slurm -i <interface>
$ slurm -i eth1
Selection_009
```

options

Press l to display lx/tx led.

press c to switch to classic mode.

press r to refresh screen.

press q to quit.


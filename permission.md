
### Give specific user permission to write to a folder using +w notation?

https://askubuntu.com/questions/487527/give-specific-user-permission-to-write-to-a-folder-using-w-notation

-R = Recurisve 
```
setfacl -R -m u:username:rwx myfolder
```


https://www.pluralsight.com/blog/it-ops/linux-file-permissions#:~:text=To%20change%20directory%20permissions%20for,only%20read%20permission%20for%20everyone.

#### Permission numbers are:
0 = ---
1 = --x
2 = -w-
3 = -wx
4 = r-
5 = r-x
6 = rw-
7 = rwx
 

#### For example:
- chmod 777 foldername will give read, write, and execute permissions for everyone.
- chmod 700 foldername will give read, write, and execute permissions for the user only.
- chmod 327 foldername will give write and execute (3) permission for the user, w (2) for the group, and read, write, and execute for the users.



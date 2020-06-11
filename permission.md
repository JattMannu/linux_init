
### Give specific user permission to write to a folder using +w notation?

https://askubuntu.com/questions/487527/give-specific-user-permission-to-write-to-a-folder-using-w-notation

-R = Recurisve 
```
setfacl -R -m u:username:rwx myfolder
```


# PostgreSQL

## Installation

```
sudo apt-get update
sudo apt-get install postgresql
# Add Install the utilities
sudo apt-get install postgresql-contrib 
```

Location of the postgresql 
/etc/postgresql/9.5/ 


### Service 
``` 
service postgresql 
```
This will list the commands we can tigger on the service
```
service postgresql status 
#To check the status
```

### User
Default user is postgres

Login via a postgres user.
```
sudo su postgres
```

### Commandline tool

Use to start the commnadline tool
```
psql
```
To list out all the database ```\u``` 
To list all the user ```\du```


Change password 
``` 
ALTER USER postgres WITH PASSWORD 'test123'; 
```

Create a new user
```
CREATE USER user_1 WITH PASSWORD 'test123';

\du
```

Add priviages to the user_1
``` 
ALTER USER user_1 WITH SUPERUSER;
\du 
```
User_1 will become the superuser,


Remove a user
``` 
DROP USER user_1
\du
```
### HELP
``` man psql ```


## Client 
```pgadmin``` This is the GUI client





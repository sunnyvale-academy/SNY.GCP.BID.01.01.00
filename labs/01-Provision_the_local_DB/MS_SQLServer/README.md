# Provision a local MS SQL Server environment

A local MS SQL Server, to be used as the migration starting point, is provided in the form of a Docker Compose application.

Before starting the lab, make sure to have a shell prompt in the same path where this README.md file resides.

To start the DB, just type the command here below:

```console
$ docker-compose up -d 
```

To completely remove the database


```console
$ docker-compose down -v
```
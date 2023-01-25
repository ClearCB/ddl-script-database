# Database Script

This is a repository to create an script that creates, modify and delete all the information present in a database from an hospital.

This is an assignment for class. 

## Relational Diagram

First, we created a relational diagram which will be our model to create our database using MARIADB, that is a DataBaseManagmentSystem open source, based in relational databases.

We decided to create a database with 5 relations:

* Doctor
* Appointment
* Patient
* Room
* Area

![relation_diagram](./doc/ASSI06.drawio.png)

## Creating a database

To start using MariaDB, we have to install MariaDB and run it.

![run mariadb](./doc/run_mariadb.png)

Then we will start using our SQL scripts (link a los scripts) to create the database and the tables.

![create database](./doc/create_database.png)

## Inserting data

Now that we have our database, we will (insert some data[link a los scripts])  to start working with it.

![insert data](./doc/insert_data.png)

## Querying

We have created some models of queries (link al scripts) we though it was interesting to think about, but are free to manipulate our database as you want

![query one](./doc/query_one.png)

![query two](./doc/query_two.png)

![query one](./doc/query_one.png)


## Updating

We also created a model to update the data and the relations, in case you think it is not correct and you want to make it look better.

You can modify it:

![update relation](./doc/update_relation.png)

You can add data:

![add relation](./doc/add_relation.png)

Or you can remove relation:

![remove relation](./doc/remove_relation.png)

## Conclusion

Finally, after all your work is done, (do not forget to save your scripts in case you need this db in the future) we also made some scripts to delete all the date stored in, and make it like if never existed. We divided it in an specific order so everythin will work:

* [Destroy all data](./scripts/delete.sql)
* [Destroy all relations](./scripts/drop.sql)

In case you want to make it at the same time, we also provided you the script to make it:

* [Destroy ALL!](./scripts/finish.sql) (WARNING, this script will erase all your database)
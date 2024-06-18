# Introduction to SQL


## What is SQL?

- SQL is an acronym for Structured Query Language and It is also pronounced/referred as ‘SEQUEL’.
- SQL is a Computer/ Programming language that is used to Interact with the RDBMS databases.
- SQL Queries/ Statements are made up of simple descriptive English words and it is easy to learn.
- SQL is Primarily used to interact with relational Databases.
- All major RDBMS like PostgreSQL, Microsoft SQL Server, Oracle, MYSQL uses SQL.
- Using SQL we can do different things as follows:
    - Create tables, views in RDBMS
    - Update, Modify Database objects
    - To view data from databases.
    - Create users and providing permissions
    - Commit, Roll Back Transaction to certain Save Point
- SQL have certain Commands to act upon the RDBMS database and doing things like performing specific tasks, functions, and queries of data.
- SQL Commands that are categorized into groups to do different things. They are
    - Data Definition Language (DDL)
    - Data Manipulation Language (DML)
    - Data Control Language (DCL)
    - Data Query Language (DQL)
    - Transaction Control Language (TCL)

## SQL for different RDBMS

ANSI maintains Standards for SQL that every different RDBMS Databases must follow.

90% of SQL Syntax is same for every RDBMSs.

10% difference exists between different RDBMSs i.e. Functions, Date Functions, Some keywords, Data types.

The SQL dialect/syntax changes between different RDBMS databases but all do the same thing.

## SQL Commands

### DDL - CREATE, DROP, TRUNCATE, ALTER, RENAME, COMMENT

- CREATE is used to define the Schema or Structure of a Database objects like Table, etc.
- TRUNCATE is used to remove the data from a Database objects like Table, etc.
- While the TRUNCATE removes the data, but table schema still exist . DROP is used to remove both the Schema and data of a Database objects like Table, etc.
- TRUNCATE drops the whole table internally and recreates a table with previous Schema.
- ALTER is used to alter/modify the Schema or Structure of a Database objects like Table, etc.
- All the command of DDL are auto-committed that means it permanently save all the changes in the database.

### DML - DELETE, INSERT, UPDATE, LOCK, CALL, EXPLAIN CALL

- DELETE is used to remove single or multiple rows/records from a table
- INSERT is used to insert data into the rows of a table.
- UPDATE is used to update/modify the value of a column in the table.
- The command of DML is not auto-committed that means it can't permanently save all the changes in the database. They can be rollback.

### DQL - SELECT

- SELECT is used to Query or view the data.
- Can be used along with GROUP BY, ORDER BY clauses.

### DCL - GRANT, REVOKE

- GRANT is used to give user particular access privileges to database.
- REVOKE is used to take back permissions from the database user.

### TCL - COMMIT, ROLLBACK, SAVEPOINT, SET Transaction, SET Constraint

- A transaction is a single logical unit of work that accesses and possibly modifies the contents of a database. Transactions access data using read and write operations.
- TCL commands can only use with DML commands like INSERT, DELETE and UPDATE only.
- These operations are automatically committed in the database that's why they cannot be used while creating tables or dropping them.
- COMMIT command is used to save all the transactions to the database.
- ROLLBACK command is used to undo transactions that have not already been saved to the database.
- SAVEPOINT is used to roll the transaction back to a certain point without rolling back the entire transaction.

AUTO COMMIT feature is used to commit changes permanently to database that are done using DML Commands 

This removes a overhead of manually Commit every time after a DML Command queries.
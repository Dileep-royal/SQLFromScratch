# Remove Duplicates records from a table
## Scenario-1 
Delete duplicate data from cars table. Duplicate record is identified based on the model and brand name.

### Solution-1:
DELETE using unique identifier -> can only work if there is a records that are duplicated only once
### Solution-2:
Solution-2: Using SELF Join. This even delete multiple duplicate records

### Solution-3:
Using Window Function -> this even deletes multiple records, only if it is partitioned by sorting id

### Solution-4:
using MIN function. This even delete multiple duplicate records

### Solution-5:
Using Backup table -> Don't do this in production environment

### Solution-6:
Using Backup table without droping original table -> Don't do this in production environment

## Scenario-2 Where every column is duplicated, even id is duplicated

### Solution-7:
Using CTID in PostgreSQl, ROWID in Oracle, don't work for MySQL, MS SQL Server

### Solution-8:
By creating a temporary unique id column

### Solution-9:
Using Backup table

### Solution-10:
Using Backup table without droping original table -> Don't do this in production environment

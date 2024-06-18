-- Active: 1717345379486@@host.docker.internal@5432

drop table if exists cars;
create table if not exists cars
(
    id      int,
    model   varchar(50),
    brand   varchar(40),
    color   varchar(30),
    make    int
);

insert into cars values (1, 'Model S', 'Tesla', 'Blue', 2018);
insert into cars values (2, 'EQS', 'Mercedes-Benz', 'Black', 2022);
insert into cars values (3, 'iX', 'BMW', 'Red', 2022);
insert into cars values (4, 'Ioniq 5', 'Hyundai', 'White', 2021);
insert into cars values (1, 'Model S', 'Tesla', 'Silver', 2018);
insert into cars values (4, 'Ioniq 5', 'Hyundai', 'Green', 2021);

Truncate TABLE cars;

-- Scenario-1:
-- Requirement: Delete duplicate data from cars table. Duplicate record is identified based on the model and brand name.

SELECT * FROM cars;

-- Solution-1: DELETE using unique identifier -> can only work if there is a records that are duplicated only once

DELETE FROM cars
WHERE id IN(
            SELECT max(id)
            FROM cars GROUP BY model,brand
            HAVING count(*)>1);

-- Solution-2: Using SELF Join. This even delete multiple duplicate records

SELECT * FROM cars;

DELETE FROM cars
WHERE id in(
            SELECT c2.id FROM cars c1
            JOIN cars c2 ON c1.model=c2.model AND c1.brand=c2.brand
            WHERE c1.id<c2.id);

-- Solution-3: Using Window Function -> this even deletes multiple records, only if it is partitioned by sorting id

SELECT * FROM cars;

DELETE FROM cars
WHERE id IN(
            SELECT id FROM (
                            SELECT *
                            , ROW_NUMBER() OVER ( PARTITION BY model, brand ORDER BY id) AS rn FROM cars) x
            WHERE x.rn > 1);

 

-- Solution-4: using MIN function. This even delete multiple duplicate records

SELECT * FROM cars;

DELETE FROM cars
WHERE id NOT IN(
                SELECT MIN(id) 
                FROM cars
                GROUP BY model, brand);

-- Solution -5 Using Backup table -> Don't do this in production environment

-- Create a backup table with same structure as original table
CREATE TABLE cars_bkp
AS SELECT * FROM cars Where 1=2;

-- Fetch the unique records from original table and insert them into backup table

INSERT INTO cars_bkp(
    SELECT * FROM cars
    WHERE id IN(
        SELECT MIN(id) FROM cars
        GROUP BY model, brand
    )
)

-- Check the backup table to ensure that unique data is copied.
SELECT * FROM cars_bkp;

-- DROP the original tabel
DROP Table cars;

-- Rename backup table to original table
Alter TABLE cars_bkp RENAME TO cars;

-- Check the original table now
SELECT * FROM cars;

-- Solution -6 Using Backup table without droping original table -> Don't do this in production environment

-- Create a backup table with same structure as original table
CREATE TABLE cars_bkp
AS SELECT * FROM cars Where 1=2;

-- Fetch the unique records from original table and insert them into backup table

INSERT INTO cars_bkp(
    SELECT * FROM cars
    WHERE id IN(
        SELECT MIN(id) FROM cars
        GROUP BY model, brand
    )
)

-- Check the backup table to ensure that unique data is copied.
SELECT * FROM cars_bkp;

-- Truncate the original tabel
TRUNCATE Table cars;

-- Copy the records from backup table to original table
INSERT INTO cars 
SELECT * FROM cars_bkp;

-- Drop the backup table
DROP TABLE cars_bkp;

-- Scenario-2 Where every column is duplicated, even id is duplicated

-- Solution -7 Using CTID in PostgreSQl, ROWID in Oracle, don't work for MySQL, MS SQL Server

SELECT *, CTID 
FROM cars;

DELETE FROM cars
WHERE ctid IN(
            SELECT max(ctid)
            FROM cars GROUP BY model,brand
            HAVING count(*)>1);

-- Solution-8 : By creating a temporary unique id column

ALTER TABLE cars ADD COLUMN row_num INT GENERATED ALWAYS AS IDENTITY;

DELETE FROM cars
WHERE row_num IN(
            SELECT max(row_num)
            FROM cars GROUP BY model,brand
            HAVING count(*)>1);

ALTER TABLE cars DROP COLUMN row_num;

-- Solution-9 : Using Backup table

-- Create a backup table by copying distict records from original table
CREATE TABLE cars_bkp
AS SELECT DISTINCT * FROM cars;

-- Check the backup table to ensure that unique data is copied.
SELECT * FROM cars_bkp;

-- Drop the original tabel
DROP Table cars;

-- Rename backup table to original table
Alter TABLE cars_bkp RENAME TO cars;

-- Check the original table now
SELECT * FROM cars;

-- Solution-10: Using Backup table without droping original table -> Don't do this in production environment

-- Create a backup table by copying distict records from original table
CREATE TABLE cars_bkp
AS SELECT DISTINCT * FROM cars;

-- Check the backup table to ensure that unique data is copied.
SELECT * FROM cars_bkp;

-- Truncate the original tabel
TRUNCATE Table cars;

-- Copy the records from backup table to original table
INSERT INTO cars 
SELECT * FROM cars_bkp;

-- Drop the backup table
DROP TABLE cars_bkp;
## What is DBMS?

- DBMS stands for Data-Base Management System.
- DBMS is a collection of programs(software) to access data from database.
- It is an Interface between Database Application and Database.
- It is a software system that is designed to enable users to store, manage and organize the data in a systematic manner.
- It allows users to create, modify, and query a database, as well as manages the security and access control for the database.
- Provides utilities like data import/export, user management, backup, performance analysis, logging and audits.
- Database Systems typically have high costs and require high-end hardware configurations

## What is Data?

- `Data` is an unprocessed and unorganized `raw facts`, which is not `self-explanatory`.
- The Data can be exist in any form, such as texts, numbers, audio, video and images, etc.
- The Data needs to processed to provide an useful insights, this is called `Information`.
- Data is meaningless, until unless it is refined, organized and giving it a `significance`.
- For e.g. Data about student would include a information like name, roll no., address, subjects, marks, etc.
- Software applications need to store the data in an organized way as it is required to `answer questions` like e.g. how many students have scored above 90?. Data is also required to `convey a story` e.g. how a student is categorized as a top performer?.
- The Information allows us to give answers to questions like who, what, why, when, where and so forth.
- Union of data and information drives us to address the how questions and do decision making. This is referred as `knowledge`.

In Summary,

Data - Collecting & Organizing - e.g. 90 Marks

Information - Processing of data - e.g. A Grade

Knowledge - Synthesizing & Decision making - e.g. Top Performer

### Data Vs Information - [**Link**](https://byjus.com/biology/difference-between-data-and-information/)

## Database

- Database is a shared collection of logically related data, which is stored electronically in a computer system.
- Database organizes these data based on what type of Database it is.
- Database is designed to meet the information needs of an organization.
- Database refers to the storage of the data. DBMS is a Software on top of database that uses SQL to do CRUD operations, etc.

## Types of DBMS

Database Systems are categorized into four types based on underlying structure used to store data.

These database systems in chronological order of their evolution are Hierarchical, Network, Relational and NoSQL.

- **`Hierarchical`:** Organizes data into a tree-like structure. Data is stored as records, which are connected to each other through parent child relationship. e.g. are Information Management System(ISM) by IBM and Raima Database Manager (RDM), etc.
- **`Network`:** Organizes data into a graph structure in which object types are nodes and relationship types are arcs. each record can have multiple parent and child records. e.g. Integrated Database Management System(IDMS), Integrated Data store(IDS), etc.
- **`Relational`:** An RDBMS stores data in tables with rows and columns, and uses SQL (Structured Query Language) to manipulate the data. The data is related to each other through primary and foreign keys i.e. parent and child relationships. e.g. are DB2, Oracle, SQL Server, MySQL, PostgreSQL, etc.
- **NOSQL DBMS:** A NoSQL(Not only SQL) DBMS stores data in non-relational data structures such as key-value pairs, document, graph, or column-based data structures. These databases aim for simplicity of design, horizontal scaling and finer control over availability. e.g. are Cassandra, MongoDB, CouchDB, OrientDB, HBase etc. best for highly-scalable and high performance scenarios.
- **OODBMS:** An OODBMS stores data as objects, which can be manipulated using object-oriented programming languages.

## Requirements from data?

Software application that utilizes data are relied upon to meet a few necessities of some end-users.

Let’s understand it by taking facebook application as a example.

- Integrity - Data should be accurate e.g. my facebook profile should contain valid country name.
- Availability - I should be able to access facebook and see my data all the time.
- Concurrent - Multiple friends of mine should be able to see my posts at the same time.
- Security - Only my friends able to see my posts and no one else.
- Independent of Application - I should be able to access the same data on my android, web and desktop applications.

# File System VS DBMS

File system exist in every computer to manage files.

Even with DBMS, still there exist a File system underlying beneath the DBMS.

DBMS is a Software on top of file system to overcome disadvantages of file systems.

|                           File System |                                  DBMS |
| --- | --- |
| Data is Unstructured and stored in files | Data is Structured and stored in the form of tables |
| Accessible using programming languages and need to know the File path (location) | No need to know the file location Example: stores in remote location |
| To access particular data of size 25 KB from a file of 20 GB. this loads all the 20 GB and searches | To access particular data of size 25KB from a file of 20 GB. this only extract particular row. |
| To fetch a particular data from a file we need to write a big program | Here a simple query is enough |
| To hide particular data we need to create a another file. this leads to redundancy | Here we can simple create views. In SQL also redundancy and we can remove it using a concept called normalization |
| This data redundancy leads to inconsistent, when some information is not updated in multiple files | Here we can remove that with normalization |
| Concurrent access is not possible | Possible with concurrency protocols like locks concept |
| Integrity | We have integrity constraints |
| Security is less, anyone can access it | Security is more and we can add access control to particular part of an file. |
| Backup mechanism is not good. | Backup mechanism is there |

## Why we need DBMS?

- Traditionally, the data is stored and organized in Flat files and can be accessed by any programing languages.
- The file-based approach have some disadvantages like as follows:
1. Need to write a big program to access data and we have to specify file path.
2. Since data is not stored in structured manner, Complex process to fetch data and loads whole big file to fetch small data from it.
3. Loss of data on simultaneous access.
4. Data redundancy i.e. to hide some data, we have to create another file and gave access to it.
5. Inability to give access based on record (Security).
6. Inconsistencies.

## Features/Functions of a DBMS

Database management System offers several functions that helps us overcome problems associated with file-based systems.

1. **`Data Modeling`:** A DBMS provides tools for creating and modifying data models, which define the structure and relationships of the data in a database.
2. **`Data storage and Retrieval`:** A DBMS is responsible for storing and retrieving data from the database, and can provide various methods for searching and querying the data.
3. **`Concurrency control`:** A DBMS provides mechanisms for controlling concurrent access to the database, to ensure that multiple users can access the data without conflicting with each other.
4. **`Data integrity and Security`:** A DBMS provides tools for enforcing data integrity and security constraints, such as constraints on the values of data and access controls that restrict who can access the data.
5. **`Transaction Support`**: Ensure modifications to database must either be successful or not done at all.
6. `Backup and recovery`**:** A DBMS provides mechanisms for backing up and recovering the data in the event of a system failure.
7. **`User Administration`:** It helps in registering and monitoring users, enforcing data security, monitoring performance, maintaining data integrity, dealing with concurrency control, and recovering information corrupted by unexpected failure.

## Different tiers of Architectures used for Database

### **1-Tier Architecture**

One-tier database architecture involves a local database installed on the system and Users can directly interacts with database easily as it is a simple architecture. Server, Client and database all are present in the same machine. Used in simple projects and to learn and explore database. Organizations won’t use this architecture.

### **2-Tier Architecture**

It is similar to client-server architecture. The Application Client can directly interacts with the database on the server side. The serve side is responsible for query processing, transactions management. It is Simple, Easily Scalable by adding Clients or by upgrading hardware, Easily access the data, low cost and easy to deploy.

### **3-Tier Architecture**

In this Architecture, there exists an intermediate layer between application client and Database server. The Application Client interacts with the application server and further this application server communicates with the database system and query processing and transaction management takes place. It provides us with security, data integrity and enhanced scalability. But in 3-tier architecture we also have to cope with its complexity and makes difficult to interact. It is mainly used in large scale web applications.

**Three-tier DBMS Architecture contains 3 inter-related modules and yet they are independent**

## Applications of DBMS

So many firms like

- Transportation
- Medical
- Colleges/ Universities
- IT Companies
- Government
- Research organizations
- Web Applications

## History of Database - [**Link**](https://www.thinkautomation.com/histories/the-history-of-databases#:~:text=Charles%20Bachman%20designed%20the%20first,Management%20System%20developed%20by%20IBM.)

`Charles Bachman` designed the first database known as the `Integrated Data Store(IDS)`, followed by the `Information Management System(IMS)` developed by IBM.

## Relational Model

- Relational databases stores data in relations i.e. tables. Each relation must have a name.
- Relation consists of attributes and tuples and provides a way to uniquely identify each tuple.
- An `attribute` is a named column of a relation. It `stores specific information` about an object e.g. salary.
- A `tuple` is a row in a relation. It represents relationship between attributes that contains single value.
- `Cardinality` of a relation is number of rows it contains.
- `Degree` of a relation is the number of attributes it contains.
- `NULL` represents the value of an attribute that is unknown or not applicable.
- A `domain` is a set of allowable values for one or more attributes.
- A collection of relations with distinct relation names is a Relational model.

## Data Integrity and Constraints

- `Data Integrity` means maintaining and assuring the accuracy and consistency of data over its entire life-cycle.
- Database systems ensure integrity through constraints, which are used to restrict the data that can be entered or modified in the database.
- Database systems offers three types of integrity Constraints
- **`Entity Integrity`**: Each table must have a column or set of columns through which we can uniquely identify a row. These column(s) cannot have empty(null) values. Enforced through `PRIMARY KEY`.
- **`Domain integrity`**: All attributes must have a defined domain i.e. finite set of values which have to be used. when we assign a data type to a column we limit the values that it contain. In addition we can also have certain restrictions based on business logic i.e. Gender must be M or F. Age should be 18+. Enforced through DATA TYPES, and CONSTRAINT like CHECK , NULL, DEFAULT, etc.
- **`Referential integrity`**: every value of a column in a table must exists as a value of another column in a different (or the same) table. Enforced through `FOREIGN KEY`.

![](/assets/integrity.png)

## Keys

### **`Candidate Key`:**

- It is a `minimal set of attributes/columns` that can be used to uniquely identify a single row/tuple in a relation. Candidate keys are identified during database design, considering basic business rule of the database.
- e.g. Employee(EmployeeNo, Name, AadharNo, Salary, DateOfBirth);
- The choice of candidate key depends upon the business context.

### `Primary Key`:

- is a candidate key that is chosen to uniquely identify a row in a relation. the mandatory attributes for an primary key are must not allow NULL values and uniquely identify a tuple.
- Also make sure that it cannot be changed over time.
- When two or more columns together identify the unique row then it’s referred to as `Composite Primary Key`. e.g. Name and DateOfBirth choosen as primary key.

### `Foreign Key`:

- A Foreign Key is a set of one or more columns in a child table whose values are required to match with corresponding columns in a parent table.
- Foreign Key establishes a relationship between these tables.
- The Foreign key of a child table must refer to the primary key or Unique key of the parent table.
- The child table can contain NULL values.
- Additionally, the numerous rows in the child table can connect to the same row of the parent table depending upon the type of relationship.

![](/assets/Keys.png)
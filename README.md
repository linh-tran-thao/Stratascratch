# Stratascratch

1. General information about SQL
- Q: What is SQL?
- A: SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases. It is used for querying, updating, inserting, and deleting data as well as managing database schema and access control.
- Q: What are the different flavors of SQL?
- A: SQL has several dialects depending on the database system, such as:
     - MySQL
     - PostgreSQL
     - Microsoft SQL Server (T-SQL)
     - Oracle (PL/SQL)
     - SQLite
     - Each dialect supports core SQL standards with some proprietary extensions.
- Q: What is a primary key?
- A: A primary key is a column (or set of columns) that uniquely identifies each row in a table. It must contain unique values and cannot be NULL.
![image](https://github.com/user-attachments/assets/a55626ad-397b-4367-8a3d-20c290e7fb6c)

2. Relational Databases and how they work?
- Q: What are the top RDBMS engines?
- A: Popular relational database engines include:
  - MySQL
  - PostgreSQL
  - Oracle Database
  - Microsoft SQL Server
  - SQLite
- Q: How is an RDBMS different from a NoSQL database?
- A: RDBMS stores data in structured tables with predefined schemas and supports SQL. NoSQL databases offer flexible schemas and are often document, key-value, graph, or column-oriented, better suited for unstructured or semi-structured data.
![image](https://github.com/user-attachments/assets/23a93428-0e3c-4ad0-a2c2-90f10631d926)

![image](https://github.com/user-attachments/assets/adf87f9c-6852-4464-8a2c-4fde82cd7ed3)

3. SQL sublanguages and their main keywords
- Q: What do DDL, DCL, and DML stand for ?
- A: 
  - DDL: Data Definition Language – defines schema (e.g., CREATE, ALTER, DROP)
  - DML: Data Manipulation Language – manages data (e.g., INSERT, UPDATE, DELETE)
  - DCL: Data Control Language – manages permissions (e.g., GRANT, REVOKE)
- Give examples of commands for each
  ![image](https://github.com/user-attachments/assets/c4fe767f-4f71-4e64-aabb-eb070fb202ed)

4. Data types and how SQL handles it (including blanks and NULLS)
- Q: What are the common data types in SQL
- A: Common data types include:
    - Numeric: INT, DECIMAL, FLOAT
    - Text: CHAR, VARCHAR, TEXT
    - Date and Time: DATE, TIME, DATETIME, TIMESTAMP
    - Boolean: BOOLEAN
- Q: Does an SQLite database support date time objects?
- A:  SQLite does not have a dedicated DATETIME type. It stores dates and times as TEXT, REAL, or INTEGER, and handles date functions using built-in string manipulation functions.

5. Attribute constraints
- Q: What are attribute constraints, and explain them?
- A: Attribute constraints enforce rules at the column level to ensure data integrity:
     - NOT NULL: Value cannot be NULL
     - UNIQUE: All values must be different
     - PRIMARY KEY: Uniquely identifies each record
     - FOREIGN KEY: Enforces a link between two tables
     - CHECK: Ensures values meet a condition
     - DEFAULT: Sets a default value for a column
6. Types of JOINS
- Q: What is the difference between inner join and left outer join ?
- A:
     - INNER JOIN returns only matching rows from both tables.
     - LEFT OUTER JOIN returns all rows from the left table and matched rows from the right. Unmatched right-side rows return NULL.
 - Q: What is the difference between UNION and UNION ALL?
 - A:
     - UNION combines results from two queries and removes duplicates.
     - UNION ALL combines results and keeps duplicates.
7. Aggregation and Rollup functions
- Q: When should one use a CTE over a subquery?
- A: Use a CTE (Common Table Expression) for readability, reusability, and when a query needs to reference itself (e.g., recursive queries). Subqueries are better for simpler, single-use cases.
- Q: What are window functions?
- A: Window functions perform calculations across a set of rows related to the current row without collapsing the result set. Examples include ROW_NUMBER(), RANK(), LEAD(), and LAG().

8. Knowledge of various SQL functions
- Q: What is the difference between WHERE and HAVING? Examples of where one should use one over the other
- A:
     - WHERE filters rows before grouping and aggregation.
     - HAVING filters groups after aggregation.
     - Example: Use WHERE to filter records where status = 'active'; use HAVING to filter groups where COUNT(*) > 10.
- Q: What does the COALESCE function do?
- A: COALESCE() returns the first non-NULL value in a list of expressions. It's often used to provide default values in case of NULLs.

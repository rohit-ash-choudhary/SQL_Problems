----- Index IN SQL :
      An index is a data structure that allows us to add indexes in the existing table.
      It enables you to improve the faster retrieval of records on a database table.
      It creates an entry for each value of the indexed columns.
      We use it to quickly find the record without searching each row in a database table whenever the table is accessed. We can create an index by using one or more columns of the table for efficient access to the records.

     Note :
          When a table is created with a primary key or unique key, it automatically creates a special index named PRIMARY. We called this index as a clustered index.
          All indexes other than PRIMARY indexes are known as a non-clustered index or secondary index.

     ----Need for Indexing in MySQL
             Suppose we have a contact book that contains names and mobile numbers of the user.
             In this contact book, we want to find the mobile number of Martin Williamson. If the contact book is an unordered format means the name of the
             contact book is not sorted alphabetically, we need to go over all pages and read every name until we will not find the desired name that we are looking for. This type of searching name is known as sequential searching.

             To find the name and contact of the user from table contactbooks, generally, we used to execute the following query:


             mysql> SELECT mobile_number FROM contactbooks WHERE first_name = 'Martin' AND last_name = 'Taybu';
             This query is very simple and easy. Although it finds the phone number and name of the user fast, the database searches entire rows of the table until it will not find the rows that you want.
             Assume, the contactbooks table contains millions of rows, then, without an index, the data retrieval takes a lot of time to find the result. In that case,
             the database indexing plays an important role in returning the desired result and improves the overall performance of the query.

     ---- MySQL CREATE INDEX Statement
          Generally, we create an index at the time of table creation in the database. The following statement creates a table with an index that contains two columns col2 and col3.

          mysql> CREATE TABLE t_index(
             col1 INT PRIMARY KEY,
             col2 INT NOT NULL,
             col3 INT NOT NULL,
             col4 VARCHAR(20),
             INDEX (col2,col3)
          );
          If we want to add index in table, we will use the CREATE INDEX statement as follows:

          mysql> CREATE INDEX [index_name] ON [table_name] (column names)
     ----- MySQL UNIQUE INDEX
           Indexing is a process to find an unordered list into an ordered list that allows us to retrieve records faster.
           It creates an entry for each value that appears in the index columns. It helps in maximizing the query's efficiency while searching on tables in MySQL.
           Without indexing, we need to scan the whole table to find the relevant information. The working of MySQL indexing is similar to the book index.

           Generally, we use the primary key constraint to enforce the uniqueness value of one or more columns. But, we can use only one primary key for each table. So if we want to
           make multiple sets of columns with unique values, the primary key constraint will not be used.

           MySQL allows another constraint called the UNIQUE INDEX to enforce the uniqueness of values in one or more columns. We can create more than one UNIQUE index in a single table, which is not possible with the primary key constraint.

           Syntax
           The following is a generic syntax used to create a unique index in MySQL table:
           CREATE UNIQUE INDEX index_name
           ON table_name (index_column1, index_column2,...);


     ---- UNIQUE Index and NULL

          NULL values in MySQL considers distinct values similar to other databases.
          Hence, we can store multiple NULL values in the UNIQUE index column.
          This feature of MySQL sometimes reported as a bug, but it is not a bug.

     ---- MySQL Clustered Index
          An index is a separate data structure that allows us to add indexes in the existing table. It enables you to improve the faster retrieval of records on a database table.
          It creates an entry for each value of the indexed columns.

          A clustered index is actually a table where the data for the rows are stored. It defines the order of the table data based on the key values that can be sorted in only one way. In the database,
          each table can have only one clustered index. In a relational database, if the table column contains a primary key or unique key, MySQL allows you to create a clustered index named PRIMARY based on that specific column.

          Characteristics
          The essential characteristics of a clustered index are as follows:

          It helps us to store data and indexes at the same time.
          It stores data in only one way based on the key values.
          Key lookup.
          They are scan and index seek.
          Clustered index always use one or more column for creating an index.
          Advantages
          The main advantages of the clustered index are as follows:



          It helps us to maximize the cache hits and minimizes the page transfer.
          It is an ideal option for range or group with max, min, and count queries.
          At the start of the range, it uses a location mechanism for finding an index entry.
          Disadvantages
          The main disadvantages of the clustered index are as follows:

          It contains many insert records in a non-sequential order.
          It creates many constant page splits like data pages or index pages.
          It always takes a long time to update the records.
          It needs extra work for SQL queries, such as insert, updates, and deletes.
          Clustered Index on InnoDB Tables
          MySQL InnoDB table must have a clustered index. The InnoDB table uses a clustered index for optimizing the speed of most common lookups and DML (Data Manipulation Language) operations like INSERT, UPDATE, and DELETE command.

          When the primary key is defined in an InnoDB table, MySQL always uses it as a clustered index named PRIMARY. If the table does not contain a primary key column, MySQL searches for the unique key. In the unique key, all columns are NOT NULL and use it as a
          clustered index. Sometimes, the table does not have a primary key nor unique key, then MySQL internally creates hidden clustered index GEN_CLUST_INDEX that contains the values of row id. Thus, there is only one clustered index in the InnoDB table.

          The indexes other than the PRIMARY Indexes (clustered indexes) are known as a secondary index or non-clustered indexes. In the MySQL InnoDB tables, every record of the non-clustered index has primary key columns for both row and columns.
           MySQL uses this primary key value for searching a row in the clustered index or secondary index.

          Example
          In the below statement, the PRIMARY KEY is a clustered index.

          CREATE TABLE `student_info` (
            `studentid` int NOT NULL AUTO_INCREMENT,
            `name` varchar(45) DEFAULT NULL,
            `age` varchar(3) DEFAULT NULL,
            `mobile` varchar(20) DEFAULT NULL,
            `email` varchar(25) DEFAULT NULL,
            PRIMARY KEY (`studentid`), //clustered index
            UNIQUE KEY `email_UNIQUE` (`email`)
          )

     ------Difference between MySQL Clustered and Non-Clustered Index
     Link : https://www.javatpoint.com/mysql-clustered-vs-non-clustered-index
           The difference between clustered and non-clustered index is the most famous question in the database related interviews. Both indexes have the same physical structure and are stored as a BTREE structure in the MySQL server database.
            In this section, we are going to explain the most popular differences between them.

           Indexing in MySQL is a process that helps us to return the requested data from the table very fast. If the table does not have an index, it scans the whole table for the requested data. MySQL allows two different types of Indexing:

           Clustered Index
           Non-Clustered Index
           Let us first discuss clustered and non-clustered indexing in brief.

           What is a Clustered Index?
           A clustered index is a table where the data for the rows are stored. It defines the order of the table data based on the key values that can be sorted in only one direction. In the database, each table can contains only one clustered index.
           In a relational database, if the table column contains a primary key or unique key,
            MySQL allows you to create a clustered index named PRIMARY based on that specific column.

           Pause

           Unmute
           Current TimeÂ
           1:17
           /
           DurationÂ
           4:57
           Â

           Fullscreen
           x

           Example
           The following example explains how the clustered index created in MySQL:

           CREATE TABLE Student
           ( post_id INT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL,
            CONSTRAINT Post_PK
               PRIMARY KEY (user_id, post_id),    //clustered index
            CONSTRAINT post_id_UQ
               UNIQUE (post_id)
           ) ENGINE = InnoDB ;
           Characteristics
           Following are the essential characteristics of a clustered index:

           It enables us to store data and indexes together.
           It stores data in only one way based on the key values.
           Key lookup.
           It support index scan and index seek data operations.
           Clustered index always use one or more column for creating an index.
           What is a Non-Clustered Index?
           The indexes other than PRIMARY indexes (clustered indexes) called a non-clustered index. The non-clustered indexes are also known as secondary indexes.
           The non-clustered index and table data are both stored in different places. It is not able to sort (ordering) the table data. The non-clustered indexing is the same as a book where the content is written in one place,
           nd the index is at a different place. MySQL allows a table to store one or more than one non-clustered index. The non-clustered indexing improves the performance of the queries which uses keys without assigning primary key.

           Example
           //It will create non-clustered index
           CREATE NonClustered INDEX index_name ON table_name (column_name ASC);
           Characteristics
           Following are the essential characteristics of a non-clustered index:

           It stores only key values.
           It allows accessing secondary data that has pointers to the physical rows.
           It helps in the operation of an index scan and seeks.
           A table can contain one or more than one non-clustered index.
           The non-clustered index row stores the value of a non-clustered key and row locator.


Link : https://www.javatpoint.com/how-to-delete-duplicate-rows-in-sql

1. This is table and there is present multiple duplicate data delete its
    DROP TABLE IF EXISTS contacts;
    CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
        email VARCHAR(210) NOT NULL,
        age VARCHAR(22) NOT NULL
    );
    Columns :  id , first_name, last_name,  email, age
    (1,'Kavin','Peterson','kavin.peterson@verizon.net','30'),
    (5,'Kavin','Peterson','kavin.peterson@verizon.net','30'),
    (8,'Kavin','Peterson','kavin.peterson@verizon.net','30'),
    (9,'Ben','Barnes','ben.barnes@comcast.net','17'),
    (13,'Ben','Barnes','ben.barnes@comcast.net','17'),
    (28,'Ben','Barnes','ben.barnes@comcast.net','17'),
    delete these duplicate data

Method : 1 Using self Join

- First check or identify duplicate data

    select eamil,count(email) from student table group by email having count(email)>=2;
    ---Output--
    kavin.peterson@verizon.net :3
    ben.barnes@comcast.net :3

-- delete the duplicate row using self join

  delete from student s1 inner join student s2 where s1.id<s2.id and s1.email=s2.email;


- now you check data using
     select * from student;

Method : 2 Delete duplicate rows using an intermediate table

1. Create backup table

create table student_backup as select * from student.

2. truncate the student table

3. insert table data int table using group by on that column in which duplicate data

    insert into student SELECT * FROM student_backup GROUP BY email;

now only unique data

Method 3 : Delete duplicate rows using the ROW_NUMBER() Function

add later after pratice :-----
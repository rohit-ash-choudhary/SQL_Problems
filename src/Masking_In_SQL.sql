SUBSTRING concept:
This is used to find substring from as string like this
Syntax : Substr("String", Starting_index,Ending_index) from Table;

      SELECT Substr(Account_Number,-4,len(Account_Number)) from Customer;

      This Query retunr last four digt of this Account_Number;
       We can also write becoz above query use negitive index
       SELECT Substr(Account_Number,len(Account_Number)-4,len(Account_Number)) from Customer;

Pipe Symbol :
    This is used to Concat two string
    SELECT Fname||Lname FROM my_table;

LPAD:
TO Add particular char in string in left side also provive target len
Syntax :  LPAD(string, length, lpad_string)

SELECT LPAD("SQL Tutorial", 20, "ABC"); - ABCABCABSQL Tutorial
Here ABC is added in left side of String till string len not became 20;

SELECT LPAD("Orcale", 10, "X"); -XXXXOrcale

RPAD :
The Oracle/PLSQL RPAD function pads the right-side of a string with a specific
set of characters (when string1 is not null).

RPAD( string1, padded_length , pad_string )

SELECT RPAD("SQL Tutorial", 20, "ABC"); -SQL TutorialABCABCAB

SELECT RPAD("Orcale", 10, "X"); -OrcaleXXXX


Q. Employee {Phone_Number }
Phone_Number look likes this 7611988883 you need to fetch like this  XXXXXXXX83

select Sustr(Phone_Number,-2) from Employee;

select lpad(Sustr(Phone_Number,-2),10, X) from Employee; - XXXXXXXX83


Q. Employee {Phone_Number }
Phone_Number look likes this 7611988883 you need to fetch like this  761XXXXXXX

select Sustr(Phone_Number,3) from Employee;

select Rpad(Sustr(Phone_Number,3),10, X) from Employee; - 761XXXXXXX

Q. Masking Person{Name , Adhaar_Number}
Mask the Adhaar_Number is XXXX XXXX 2345

select Sustr(Adhaar_Number,-4) from Person;

SELECT "XXXX XXXX"|| Sustr(Adhaar_Number,-4) from Person;

select Lpad(Sustr(Phone_Number,-3),12, X) from Employee; - XXXX XXXX 2345







Q. Table Customer { Name, Salary, Account_Number, Address}
1. Find out the last four digit of Account_Number
2. Fetch the data like Last four number of Account_Number looks lIke 'XXXX'


Ans. 1
SELECT Substr(Account_Number,-4,len(Account_Number)) from Customer;

// This Query retunr last four digt of this Account_Number;
You can also write :
SELECT Substr(Account_Number,len(Account_Number)-4,len(Account_Number)) from Customer;

Ans. 2

Select Substr(Adhaar_Number,1,-4) || 'XXXX' from Customer;
Select left(Adhaar_Number,len-4) + "XXXX" from Customer;
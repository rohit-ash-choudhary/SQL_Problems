---- MySQL CASE Expression
         MySQL CASE expression is a part of the control flow function that provides us to write an if-else or if-then-else logic to a query.
         This expression can be used anywhere that uses a valid program or query, such as SELECT, WHERE, ORDER BY clause, etc.

         The CASE expression validates various conditions and returns the result when the first condition is true. Once the condition is met,
         it stops traversing and gives the output. If it will not find any condition true, it executes the else block. When the else block is not found, it returns a NULL value. The main goal of MySQL CASE statement is to deal with multiple IF statements in the SELECT clause.

         1. Simple CASE statement:
             The first method is to take a value and matches it with the given statement, as shown below.
             Syntax
             CASE value
                 WHEN [compare_value] THEN result
                 [WHEN [compare_value] THEN result ...]
                 [ELSE result]
             END
             It returns the result when the first compare_value comparison becomes true. Otherwise, it will return the else clause.
             Example
             mysql> SELECT CASE 1 WHEN 1 THEN 'one' WHEN 2 THEN 'two' ELSE 'more' END;


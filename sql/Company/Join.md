# JOIN


1. you can ```join``` rows from different tables that are related by cols.
```sql
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;
```
* ```emp_id``` is reference for ```mgr_id``` which is *FOREIGN KEY* of branch table


2. if you use ```left join``` you can get data which doesn't have value of ```branch_name```.
```sql
LEFT JOIN branch
```
* LEFT table is FROM table(employee).
* you got all the rows from employee table.


3. ```RIGHT JOIN``` is opposite.
```sql
RIGHT JOIN branch
```
* RIGHT table is RIGHT JOIN table(branch).
* you got all the rows from branch table.

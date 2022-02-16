# Union


1. you can combine two different search data from multiple tables by using ```UNION```
```sql
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;
```
* but if number of selected cols don't match, it doesn't work


2. you can change the name of union col
```sql
SELECT first_name AS Company_Names
FROM employee
UNION
SELECT branch_name
FROM branch;
```


3. Case 3
```sql
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;
```

# NESTED Queries


1. if you want information by using two different tables you can use foreign id
```sql
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000;
```
* In this querie you can get the ids of emp who got sales over 30000.

```sql
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
  SELECT works_with.emp_id
  FROM works_with
  WHERE works_with.total_sales > 30000;
);
```
* you can get the name of emp who sold over 30000.

***

2. This is another example
```sql
SELECT client.client_name
FROM client
WHERE client.branch_id = (
  SELECT branch.branch_id
  FROM branch
  WHERE branch.mgr_id = 102
  LIMIT 1 --you need only one row
);
```
* you can get the client_id of branch manager who has id 102.

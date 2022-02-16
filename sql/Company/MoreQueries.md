# More Queries


1. you can change the col name
```sql
SELECT first_name AS forename, last_name AS surname
FROM employee;
```


2. you can search different values
```sql
SELECT DITINCT sex
FROM employee;
```


***


### Function


1. you can search the number of values
```sql
SELECT COUNT(emp_id)
FROM employee;
```


2. you can make condition
```sql
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_date > '1970-01-01';
```


3. you can find out average
```sql
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';
```


4. you can find out sum
```sql
SELECT SUM(salary)
FROM employee;
```


5. you can make group
```sql
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;
```


6. ex) Find the total sales of each salesman
```sql
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;
```

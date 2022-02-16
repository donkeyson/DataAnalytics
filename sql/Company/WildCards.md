# Whild Cards


1. you can serach data by pattern
```sql
SELECT *
FROM client
WHERE client_name LIKE '%LLC';
```
* *%LLC* menas chars + end with 'LLC'


2. CASE 2
```sql
SELECT *
FROM employee
WHERE birth_date LIKE '____-10';
```
* _ means one word for each

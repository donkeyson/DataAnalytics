# Creating Table

you can use 6 var
1. INT
2. DECIMAL(A, B)
3. VARCHAR(1)
4. BLOB
5. DATE
6. TIMESTAMP

***

## Student Table
```sql
CREATE TABLE student (
   student_id INT PRIMARY KEY,
   name VARCHAR(20),
   major VARCHAR(20),
);
```

you can see the table using ```DESCRIBE```

```sql
DESCRIBE student;
```

you can drop and add specific column suing ```drop```

```sql
ALTER TABLE student ADD gpa DECIMAL(3, 2);
```

```sql
ALTER TABLE student DROP COLUMN gpa;
```

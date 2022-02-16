# Inserting Data

1. you can ***insert*** data by using ***INSERT***

```sql
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'KATE', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
```
*if you don't know any column data. you can't just skip it*
*you can't insert data which has same id*

2. you can see all the info of student by using ***SELECT***

```sql
SELECT * FROM student;
```

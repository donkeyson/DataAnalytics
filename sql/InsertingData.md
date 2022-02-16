# Inserting Data

1. you can ***insert*** data by using ***INSERT***

```sql
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'KATE', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
```
* if you don't know any column data. you can't just skip it
* you can't insert data which has same id

2. you can see all the info of student by using ***SELECT***

```sql
SELECT * FROM student;
```

3. you can drop the tabe by using ```DROP```

```sql
DROP TABLE student;
```

4. ```NOT NULL``` means a var needs specific value.

```sql
name VARCHAR(20) NOT NULL
```

5. ```UNIQUE``` means values can't be duplicated

```sql
major VARCHAR(20) UNIQUE
```

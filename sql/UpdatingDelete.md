# Updating and Delete


1. you can change the value by using ```UPDATE```
```sql
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';
```

2. you can use multiple conditions
```sql
WHERE major = 'Bio' OR major = 'Chemistry';
```

3. you can make multiple changes
```sql
UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;
```

4. you can delete specific VALUES
```sql
DELETE FROM student
WHERE student_id = 5;
```

5. you can also use multiple condition
```sql
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';
```

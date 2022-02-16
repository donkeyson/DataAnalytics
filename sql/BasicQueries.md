# BasicQueries


1. you can choose specific col
```sql
SELECT student.name, student.major
FROM student;
```


2. to state standard for order
```sql
ORDER BY name;
```
* 이름을 기준으로 정렬
* 오름차순 디폴트(ASC)
*2차 기준 설정 가능. ```ORDER BY major, student_id;```


3. you can set limit(specifie number of rows)
```sql
SELECT * FROM student
LIMIT 2;
```


4. you can make except conditions
```sql
SELECT name, major
FROM student
WHRER major <> 'Chemistry';
```


5. you can make era of conditions
```sql
WHERE name IN ('Claire', 'Kate', 'Mike');
```

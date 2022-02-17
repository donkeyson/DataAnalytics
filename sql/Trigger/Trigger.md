#Trigger


1. making trigger
```sql
CREATE TABLE trigger_test (
  message VARCHAR(100)
);
```
```sql
DELIMITER $$
CREATE
  TRIGGER my_trigger BEFORE INSERT
  ON employee
  FOR EACH ROW BEGIN
    INSERT INTO trigger_test VALUES('added new employee');
  END$$
DELIMITER ;
```
* ```DELEMITER``` changes ';' to '$$'
* you should use terminal


2. you can get the ```first_name```of added row
```sql
FOR EACH ROW BEGIN
  INSERT INTO trigger_test VALUES(NEW.first_name);
```


3. you can make conditions
```sql
IF NEW.sex = 'M' THEN
  INSERT INTO trigger_test VALUES('added male employee');
ELSEIF NEW.sex = 'F' THEN
  INSERT INTO trigger_test VALUES('added female');
ELSE
  INSERT INTO trigger_test VALUES('added other employee');
END IF;
```

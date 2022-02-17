#ON DELETING


#### When deleting Ref Foreign key

1. you can delete referenced data
```sql
DELETE FROM employee
WHERE emp_id = 102;
```
* now mgr_id(it ref emp_id) becomes ```NULL```


2. ON DELETE CASCADE
```sql
CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES(branch_id) ON DELETE
  CASCADE
);
```
* if you delete referenced *branch_id* all the rows which reference branch_id would be deleted

```sql
DELETE FROM branch
WHERE branch_id = 2;
```

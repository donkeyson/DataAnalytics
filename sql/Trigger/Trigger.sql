CREATE TABLE trigger_test (
  message VARCHAR(100)
);

DELIMITER $$
CREATE
  TRIGGER my_trigger BEFORE INSERT
  ON employee
  FOR EACH ROW BEGIN
    IF NEW.sex = 'M' THEN
      INSERT INTO trigger_test VALUES('added male employee');
    ELSEIF NEW.sex = 'F' THEN
      INSERT INTO trigger_test VALUES('added female');
    ELSE
      INSERT INTO trigger_test VALUES('added other employee');
    END IF;
  END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

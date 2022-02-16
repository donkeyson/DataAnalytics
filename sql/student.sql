CREATE TABLE giraffe.student(
	student_id INT,
	name VARCHAR(20),
	major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'KATE', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');

DESCRIBE giraffe.student;
SELECT * FROM student;

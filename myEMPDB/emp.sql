CREATE TABLE emp (
	emp_id INT,
	emp_name VARCHAR (50),
	PRIMARY KEY (emp_id),
	UNIQUE (emp_id)
);

INSERT INTO emp(emp_id, emp_name)
VALUES (1002,'OlaOlu');

INSERT INTO emp
	(emp_id, emp_name)
VALUES
	(1003, 'IfeOba'),
	(1004, 'AdeTiger'),
	(1005,'Maley');
	
UPDATE emp
SET emp_name = 'OgaMaka'
WHERE emp_id = 1005;

SELECT * FROM emp;
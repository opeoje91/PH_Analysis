CREATE TABLE salary(
	emp_id INT NOT NULL  UNIQUE,
	emp_name VARCHAR (50),
	emp_salary INT,
	PRIMARY KEY (emp_id)
);

SELECT * FROM salary;

DROP TABLE salary;

INSERT INTO salary (emp_id, emp_name)
SELECT emp_id, emp_name
FROM emp;

UPDATE salary
SET emp_salary = 50
WHERE emp_id = 1001;

UPDATE salary
SET emp_salary = 500
WHERE emp_salary = 50;

--error: operator does not exist: integer = record

UPDATE salary
SET emp_salary = (100, 50)
WHERE emp_id = (1002,1003);


--not working
INSERT INTO 
	salary (emp_salary)
VALUES 
		(50,
	   100,
	   50,
	   100,
	   500);
WHERE emp_id IN (1001,1002,1003,1004,1005);

--not working
UPDATE salary 
SET emp_salary = (50,100,50,100,500)
WHERE emp_id IN ('1001','1002','1003','1004','1005');



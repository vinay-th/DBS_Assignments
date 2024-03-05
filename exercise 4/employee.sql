/*
1) Display the details of all employees.
2) Display Ecode, Ename and salary of all employees.
3) Display all employees whose salary is greater than 60000.
4) Display Ename and salary whose age is less than 35.
5) Display department code. The code will appear for only once.
6) Display the total number of employees.
7) Display all the details of employee whose department code is 103 and salary is greater than
65000.
8) Display all the details of employee whose age is greater than 35 or salary is less than 60000.
9) Display all the details of employee whose age is between 25 and 35.
10) Display Employee name whose department code are 101,103,123.
11) Display Employeename and department code whose name ends with ‘Sharma’.
12) Display Employeename and department code whose name starts with R and has j in between
the name.
13) Display the Employee code and age whose name does not contain ‘j’ in between.
14) Display the employee name and salary in ascending order of their name.
15) Display the employee name and age in descending order of their name.
16) Increase the salary of an employee by 10% whose age is greater than 50.
17) Delete the records of all employees whose department code is 101.
18) Delete the records of all employees whose name is ‘Rajesh Kumar’.
19) Add another column dept_name with varchar datatype in employee table.
20) Put department name as IT where department code is 123.
21) Display maximum salary from all the employees.
22) Dsiplay minimum age from all the employees.
23) Display average salary of all employees.
24) Display total salary of all employees.
25) Create a view emp with employee code, employee name and salary.
26) Display the details of emp view.
27) Delete the record of an employee whose age is 29.
28) Put department name as ‘Sales’ where department code is 119.
29) Set default value for department name as ‘Admin’.
30) Insert values for only employee code, employee name and salary into the employee table
and display all the data.
*/

CREATE TABLE emp3 (ECode int NOT NULL PRIMARY KEY, EName varchar(255) NOT NULL, DepCde varchar(255), Salary int, Age int, JoinDate date);

INSERT INTO emp3 VALUES
(15, 'Sameer Sharma', '123', 75000, 39, '2007-04-01'),
(21, 'Raguvindra K', '101', 86000, 29, '2005-11-11'),
(34, 'Rama Gupta', '119', 52500, 43, '2010-03-03'),
(46, 'CR Menon', '103', 67000, 38, '2004-07-12'),
(77, 'Mohan Kumar', '103', 63000, 55, '2000-11-25'),
(81, 'Rajesh Kumar', '119', 74500, 48, '2008-12-11'),
(89, 'Sanjeev P', '101', 92600, 54, '2009-01-12'),
(93, 'Pragya Jain', '123', 32000, 29, '2006-08-05');

SELECT * FROM emp3;

-- 1
SELECT * FROM emp3;

-- 2
SELECT ECode, EName, Salary FROM emp3;

-- 3
SELECT * FROM emp3 WHERE Salary > 60000;

-- 4
SELECT EName, Salary FROM emp3 WHERE Age < 35;

-- 5
SELECT DISTINCT DepCde FROM emp3;

-- 6
SELECT COUNT(*) FROM emp3;

-- 7
SELECT * FROM emp3 WHERE DepCde = '103' AND Salary > 65000;

-- 8
SELECT * FROM emp3 WHERE Age > 35 OR Salary < 60000;

-- 9
SELECT * FROM emp3 WHERE Age BETWEEN 25 AND 35;

-- 10
SELECT EName FROM emp3 WHERE DepCde IN ('101', '103', '123');

-- 11
SELECT EName, DepCde FROM emp3 WHERE EName LIKE '%Sharma';

-- 12
SELECT EName, DepCde FROM emp3 WHERE EName LIKE 'R%j%';

-- 13
SELECT EName, Age FROM emp3 WHERE EName NOT LIKE '%j%';

-- 14
SELECT EName, Salary FROM emp3 ORDER BY EName;

-- 15
SELECT EName, Age FROM emp3 ORDER BY Age DESC;

-- 16
UPDATE emp3 SET Salary = Salary * 1.1 WHERE Age > 50;

-- 17
DELETE FROM emp3 WHERE DepCde = '101';

-- 18
DELETE FROM emp3 WHERE EName = 'Rajesh Kumar';

-- 19
ALTER TABLE emp3 ADD DepName varchar(255);

-- 20
UPDATE emp3 SET DepName = 'IT' WHERE DepCde = '123';

-- 21
SELECT MAX(Salary) FROM emp3;

-- 22
SELECT MIN(Age) FROM emp3;

-- 23
SELECT AVG(Salary) FROM emp3;

-- 24
SELECT SUM(Salary) FROM emp3;

-- 25
CREATE VIEW emp AS SELECT ECode, EName, Salary FROM emp3;

-- 26
SELECT * FROM emp;

-- 27
DELETE FROM emp3 WHERE Age = 29;

-- 28
UPDATE emp3 SET DepName = 'Sales' WHERE DepCde = '119';

-- 29
ALTER TABLE emp3 ALTER COLUMN DepName SET DEFAULT 'Admin';

-- 30

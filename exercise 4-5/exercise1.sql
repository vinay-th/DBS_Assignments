
CREATE TABLE emp4 (Emp_No VARCHAR(4) PRIMARY KEY NOT NULL, First_Name VARCHAR(10) NOT NULL, Last_Name VARCHAR(10), Start_Date DATE, End_Date DATE, Salary DECIMAL(8,2), City VARCHAR(10), Description VARCHAR(15));

ALTER TABLE emp4 ADD COLUMN depno INT;

INSERT INTO emp4 VALUES (01, "Jason", "Martin", "1996-07-25", "2006-07-25", 1234.56, "Toronto", "Programmer", 10);

INSERT INTO emp4 VALUES (02, "Alison", "Mathewes", "1976-03-21", "2006-02-25", 2234.78, "Vancouver", "Tester", 15);
INSERT INTO emp4 VALUES (03, "James", "Smith", "1978-12-12", "1996-03-25", 2234.78, "Vancouver", "Tester", 20);
INSERT INTO emp4 VALUES (04, "Celia", "Ricer", "1982-10-24", "1990-04-25", 3334.78, "Vancouver", "Manager", 30);
INSERT INTO emp4 VALUES (05, "Roben", "Black", "1984-01-15", "1999-08-25", 4334.78, "Vancouver", "Tester", 20);
INSERT INTO emp4 VALUES (06, "Linda", "Green", "1987-07-30", "1998-01-25", 5334.78, "New York", "Tester", 10);
INSERT INTO emp4 VALUES (07, "David", "Larry", "1990-12-31", "1999-02-25", 6334.78, "New York", "Manager", 15);
INSERT INTO emp4 VALUES (08, "James", "Cat", "1996-09-17", "2002-04-25", 7334.78, "Vancouver", "Tester", 22);

CREATE TABLE Dept4 (depno INT PRIMARY KEY NOT NULL, dname VARCHAR(10) NOT NULL, DLocation VARCHAR(10) NOT NULL);

INSERT INTO dept4 VALUES(10, 'Clerk', 'Ahmedabad'),(15, 'Salesman', 'Vadodara'),(20, 'Analyst', 'Surat'),(30, 'Electrical', 'Ahmedabad'),(14, 'Civil', 'Valsad'),(22, 'Mechanical', 'Vapi'),(28, 'Information Technology', 'Vapi'),(27, 'Chemical', 'Surat');


ALTER TABLE emp4 ADD FOREIGN KEY (depno) REFERENCES Dept4(depno);

-- 1
ALTER TABLE emp4 ADD COLUMN manager INT;
ALTER TABLE emp4 ADD COLUMN commission INT;

-- 2
SELECT * FROM emp4;

-- 3
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName, Description FROM emp4 WHERE depno = 20;

-- 4
SELECT * FROM emp4 WHERE depno = 30;

-- 5
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE Emp_No > 5; 

-- 6
SELECT manager FROM emp4 WHERE depno != 10;

-- 7
SELECT COUNT(Emp_No) FROM emp4;

-- 8
SELECT First_Name, Last_Name FROM emp4 WHERE depno IN (SELECT depno FROM dept4 WHERE DLocation = "Surat");

-- 9
SELECT First_Name, Last_Name FROM emp4 WHERE depno IN (SELECT depno FROM dept4 WHERE dname != "Clerk" AND dname != "Salesman" AND dname != "Analyst");

-- 10
SELECT First_Name, Last_Name, Salary FROM emp4 ORDER BY Description;

-- 11
SELECT Emp_No, CONCAT(First_Name, " ",Last_Name) AS FullName FROM emp4 WHERE manager = 1;

-- 12
SELECT SUM(Salary) FROM emp4;

-- 13
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE Emp_No = (SELECT MIN(Emp_No) FROM emp4);

-- 14
SELECT D.depno , MIN(E.Salary) FROM emp4 AS E, dept4 AS D WHERE E.depno = D.depno GROUP BY D.depno, D.dname;

-- 15
SELECT Emp_No, Description FROM EMP4 WHERE Salary > 2000;

-- 16
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName, Salary FROM EMP4;

-- 17
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 ORDER BY Emp_No DESC;

-- 18
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE Salary BETWEEN 1000 AND 2000;

-- 19
SELECT AVG(Salary) FROM EMP4;

-- 20
SELECT D.depno, MIN(E.Salary) FROM EMP4 AS E, DEPT4 AS D WHERE E.depno = D.depno GROUP BY depno;

-- 21
SELECT DISTINCT COUNT(First_Name), Description FROM EMP4 GROUP BY depno, Description;

-- 22
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE depno = 10;

-- 23
SELECT DISTINCT depno AS DepartmentNO, dname AS department FROM DEPT4;

-- 24
SELECT MIN(Salary) FROM EMP4;

-- 25
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 ORDER BY First_Name ASC;

-- 26
SELECT E.First_Name, D.dname, D.DLocation FROM EMP4 AS E, DEPT4 AS D WHERE E.depno = D.depno;

-- 27
SELECT DISTINCT Description FROM EMP4 WHERE depno IN (10,20);

-- 28
SELECT * FROM EMP4 ORDER BY Salary;

-- 29
SELECT MAX(Salary) AS Max_Manager_Sal FROM EMP4 WHERE Description = "Manager";

-- 30
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName, depno FROM EMP4 WHERE Description = "Manager";

-- 31
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE Description = "analyst";

-- 32
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE depno IN (10,20);

-- 33
SELECT Emp_No FROM EMP4 WHERE First_Name LIKE "J%";

-- 34
SELECT Emp_No FROM EMP4 WHERE First_Name IN ("Smith", "Blake", "Allen", "Clark", "King", "Jason");

-- 35
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE Salary > 2000;

-- 36
SELECT Emp_No FROM EMP4 WHERE First_Name LIKE "J%" OR First_Name LIKE "N%";

-- 37
SELECT DISTINCT depno, AVG(Salary), MIN(Salary), MAX(Salary) FROM EMP4 GROUP BY depno;

-- 38
CREATE VIEW V_EMP AS SELECT DISTINCT depno, SUM(Salary) FROM EMP4 GROUP BY depno;

-- 39
DROP VIEW V_EMP;

-- 40
SELECT First_Name, Last_Name, Salary * 12 AS annual FROM EMP4 ORDER BY annual DESC;

-- 41
SELECT * FROM DEPT4;

-- 42
SELECT DISTINCT Salary,Emp_No FROM EMP4 ORDER BY Salary; 

-- 43
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE depno IN (10,20);

-- 44
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE depno IN (10) OR Start_Date = "1981-01-01";

-- 45
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName, Salary * 12 AS annual FROM EMP4 ORDER BY annual;

-- 46
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 WHERE depno != 10;

-- 47
SELECT CONCAT(First_Name, " ",Last_Name) AS FullName FROM EMP4 ORDER BY FullName;

-- 48
SELECT * FROM EMP4 ORDER BY depno ASC, Salary DESC;

-- 49
TRUNCATE TABLE EMP4;
DROP TABLE EMP4;

-- 50
UPDATE EMP4 SET Salary = Salary + 1000 WHERE Emp_No = 1;
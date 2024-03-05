CREATE TABLE Employee (EmpID INT PRIMARY KEY, EmpName VARCHAR(20), EmpAddress VARCHAR(20), EmpSalary INT, Emp_hire_date DATE);

CREATE TABLE Department (DeptID INT PRIMARY KEY, DeptName VARCHAR(20), DeptLocation VARCHAR(20), Dep_Head_Name VARCHAR(20), EmpID INT);


-- EMPLOYEE TABLE DATA

INSERT INTO Employee VALUES(101, 'Rahul Singh', 'Bangalore', 45000, '2023-01-01'),(102, 'Priya Patel', 'Mumbai', 60000, '2022-06-15'),(103, 'Aisha Kapoor', 'Chennai', 52000, '2021-12-31'),(104, 'Dev Sharma', 'Kolkata', 38000, '2022-03-05'),(105, 'Manish Kumar', 'Delhi', 75000, '2020-09-20'),(106, 'Sita Devi', 'Mumbai', 35000, '2023-02-14'),(107, 'Rajesh Mehta', 'Chennai', 58000, '2022-08-10');

-- DEPARTMENT TABLE DATA

INSERT INTO Department VALUES('D101', 'Sales', 'Bangalore', 'Rahul Singh', 101),('D102', 'Marketing', 'Mumbai', 'Priya Patel', 102),('D103', 'HR', 'Chennai', 'Aisha Kapoor', 103),('D114', 'IT', 'Kolkata', 'Dev Sharma', 104),('D105', 'Finance', 'Delhi', 'Manish Kumar', 105),('D115', 'IT', 'Mumbai', 'Sita Devi', 106),('D113', 'HR', 'Chennai', 'Rajesh Mehta', 107);

ALTER TABLE Department ADD FOREIGN KEY (EmpID) REFERENCES Employee(EmpID);

-- 1
SELECT DeptName FROM Department JOIN Employee ON Department.EmpID = Employee.EmpID WHERE EmpAddress = "Mumbai" AND EmpSalary < 1000; 

-- 2
SELECT EmpName FROM Employee WHERE EmpAddress = "Kolkata" OR EmpID IN(SELECT EmpID FROM Department WHERE DeptID = 'D114');

-- 3
SELECT EmpName FROM Employee WHERE EmpSalary = (SELECT MAX(EmpSalary) FROM Employee);

-- 4
SELECT EmpSalary FROM Employee WHERE EmpSalary = (SELECT MAX(EmpSalary) FROM Employee WHERE EmpSalary < (SELECT MAX(EmpSalary) FROM Employee));

-- 5.1
SELECT DeptName FROM Department UNION SELECT DeptLocation FROM Department;

-- 5.2
SELECT DeptName FROM Department UNION ALL SELECT DeptLocation FROM Department;

-- 5.3
SELECT DeptName FROM Department INTERSECT SELECT DeptLocation FROM Department;

-- 6.1
SELECT * FROM Employee E JOIN Department D ON E.EmpID = D.EmpID; 

-- 6.2
SELECT * FROM EMPLOYEE NATURAL JOIN DEPARTMENT;

-- 6.3
SELECT * FROM Employee RIGHT JOIN Department ON Employee.EmpID = Department.EmpID;

-- 7

SELECT DeptLocation FROM Department WHERE EmpID = (SELECT EmpID FROM Employee WHERE EmpSalary = (SELECT MIN(EmpSalary) FROM Employee));

-- 8
SELECT EmpSalary FROM Employee WHERE EmpID IN (SELECT EmpID FROM Department WHERE Dep_Head_Name = 'Priya Patel' OR Dep_Head_Name LIKE "%i%");

-- 9
SELECT E.EmpName, D.DeptName FROM Employee E JOIN Department D ON E.EmpID = D.EmpID WHERE YEAR(E.Emp_hire_date) = 2021 AND MONTH(E.Emp_hire_date) = 12;

-- 10
UPDATE Employee SET EmpSalary = EmpSalary + EmpSalary*0.05 WHERE EmpID = (SELECT EmpID FROM Department WHERE Dep_Head_Name = "Aisha Kapoor");




SELECT column1, column2 FROM table1 FULL OUTER JOIN table2 ON table1.column = table2.column;
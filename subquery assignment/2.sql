CREATE TABLE Student (RollNo VARCHAR(10), Name VARCHAR(20), Mobile DECIMAL(10,0), DOB DATE);

INSERT INTO Student (Rollno, Name, MobileNo, BirthDate) VALUES
('A06', 'Amit Kumar', '9876543211', '2002-07-12'),
('A07', 'Priya Gupta', '8765432190', '2001-04-25'),
('A08', 'Rajesh Singh', '7654321987', '2003-09-18'),
('A09', 'Neha Sharma', '6543219870', '2000-12-30'),
('A10', 'Sneha Patel', '5432198765', '2004-11-08');


-- 1
SELECT Name FROM Student WHERE DOB < '2003-01-21';

-- 2
SELECT Name, RollNo, DOB FROM Student WHERE CITY= "Patna" "Delhi" "BarodA";

-- 3
UPDATE Student SET Mobile = 9974528315 WHERE RollNo = 'A06';

-- 4
DELETE FROM Student;

-- 5
SELECT DOB FROM Student WHERE Name LIKE "__a__i%";
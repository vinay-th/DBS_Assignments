CREATE TABLE manufacture (MId VARCHAR(20) PRIMARY KEY, MName VARCHAR(20), Price INT, MfgDate DATE, ExpDate DATE);

INSERT INTO manufacture VALUES ('M101', 'Lux', 100, '2023-03-08', '2023-03-15');
INSERT INTO manufacture VALUES ('M102', 'Dove', 120, '2023-03-09', '2023-03-16');
INSERT INTO manufacture VALUES ('M103', 'Nivea', 520, '2023-03-10', '2023-03-17');
INSERT INTO manufacture VALUES ('M104', 'Lifebuoy', 200, '2023-03-11', '2012-02-18');
INSERT INTO manufacture VALUES ('M105', 'Dettol', 250, '2023-03-12', '2023-03-19');

-- 1
SELECT * FROM manufacture WHERE MName = 'Lux' OR ExpDate = '2012-02-18'; 

-- 2
SELECT MfgDate FROM manufacture WHERE Price > 500;

-- 3
UPDATE manufacture SET Price = Price * 0.1 + Price WHERE MId = 'M101';  

-- 4
DROP TABLE manufacture;

-- 5
SELECT Price FROM manufacture WHERE MName LIKE "%t%";
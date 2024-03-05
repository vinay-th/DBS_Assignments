CREATE TABLE loan (AccNo INT PRIMARY KEY, Cust_Name VARCHAR(255), Loan_Amount INT, Instalments INT, Int_Rate DECIMAL(5, 2), Start_Date DATE, Interest INT);

INSERT INTO loan VALUES (1, 'R.K. Gupta', 300000, 36, 12.00, '2009-07-19', NULL), 
(2, 'S.P. Sharma', 500000, 48, 10.00, '2008-03-22', NULL), 
(3, 'K.P. Jain', 300000, 36, NULL, '2007-03-08', NULL), 
(4, 'M.P. Yadav', 800000, 60, 10.00, '2008-12-06', NULL), 
(5, 'S.P. Sinha', 200000, 36, 12.50, '2010-01-03', NULL), 
(6, 'P. Sharma', 700000, 60, 12.50, '2008-06-05', NULL), 
(7, 'K.S. Dhall', 500000, 48, NULL, '2008-03-05', NULL);

/* 1- */ select * from loan;

/* 2- */ select AccNo, Cust_Name, Loan_Amount from loan;

/* 3- */ select * from loan where Instalments > 40;

/* 4- */ select AccNo, Loan_Amount from loan where Start_Date < '2009-04-01';

/* 5- */ select Int_Rate from loan where Start_Date > '2009-04-01';

/* 6- */ select * from loan where Int_Rate is NULL;

/* 7- */ select * from loan where Int_Rate is not NULL;

/* 8- */ select distinct Loan_Amount from loan;

/* 9- */ select distinct Instalments from loan;

/* 10- */ select * from loan where Start_Date > '2008-12-31' and Instalments >36;

/* 11- */ select Cust_Name, Loan_Amount from loan where Instalments != 36; 

/* 12- */ select Cust_Name, Loan_Amount from loan where Loan_Amount < 500000 OR Int_Rate > 12;

/* 13- */ select * from loan where Loan_Amount < 500000 AND Loan_Amount > 400000;

/* 14- */ select * from loan where Int_Rate < 15 AND Int_Rate > 11;

/* 15- */ select Cust_Name, Loan_Amount from loan where Instalments in (24,36,48);

/* 16- */ select Cust_Name, Loan_Amount, AccNo from loan where Cust_Name like '%Sharma';

/* 17- */ select Cust_Name, Loan_Amount, AccNo from loan where Cust_Name like '%a';

/* 18- */ select Cust_Name, Loan_Amount, AccNo from loan where Cust_Name like '%a%';

/* 19- */ select Cust_Name, Loan_Amount, AccNo from loan where Cust_Name not like '%P%';

/* 20- */ select Cust_Name, Loan_Amount, AccNo from loan where Cust_Name like '%a_';

/* 21- */ update loan set Int_Rate = 11.50 where Int_Rate is NULL;

/* 22- */ update loan set Int_Rate = Int_Rate + 0.5 where Loan_Amount > 400000;

/* 23- */ update loan set Interest = (Loan_Amount*Int_Rate*Instalments)/12 * 100;

/* 24- */ delete from loan where Cust_Name = 'K.P. Jain';

/* 25- */ alter table loan add column Category CHAR(1);

/* 26- */ create view accc as SELECT Cust_Name, Loan_Amount, AccNo FROM loan;

/* 27- */ select * from accc;

/* 28- */ drop view accc;


#DQL DEMONSTRATION
USE BankingDB;
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Loans;
Select *
FROM Accounts
WHERE AccountType = 'Savings';
SELECT *
 FROM Accounts
 WHERE Balance >25000;
 SELECT *
 FROM Transactions
 WHERE AMOUNT BETWEEN 5000 AND 20000;
 SELECT *
 FROM Transactions
 WHERE Amount >=5000
 AND Amount <=20000;
 
 SELECT *
 FROM customers
 WHERE CustomerID IN (102,103);
 
 SELECT *
 FROM customers
 WHERE FIRSTNAME LIKE 'R%';
SELECT * FROM customers
ORDER BY FIRSTNAME DESC;
SELECT * FROM Accounts
ORDER BY Balance Desc;
SELECT DISTINCT AccountType
FROM Accounts;
SELECT * FROM Accounts
ORDER BY Balance DESC;
LIMIT 1;

SELECT * FROM Transactions
LIMIT 5 OFFSET 2;

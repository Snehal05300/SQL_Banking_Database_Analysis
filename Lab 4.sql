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

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, AccountCreationDate, DateofBirth)
VALUES
(108, 'Simran', 'Kanojia', 'simran.kanojia@mail.com', '2025-05-10', '2005-10-14');

SELECT * FROM Customers
WHERE Phone IS NULL;

SELECT * FROM Customers
WHERE Email IS NOT NULL;

SELECT  AccountID, Balance,
CASE
WHEN Balance >= 50000 THEN 'Premimum Account'
WHEN Balance >= 25000 THEN 'Standard Account'
Else 'Basic Account'
END AS AccountCategory
From Accounts;

SELECT AccountID,Balance,
RANK() OVER (ORDER BY BALANCE DESC) AS BalanceRank
From Accounts;

SELECT TransactionID, Amount,
SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
From Transactions;

SELECT TransactionID, Amount,
AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;


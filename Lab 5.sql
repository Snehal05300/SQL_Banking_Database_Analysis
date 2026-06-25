SELECT * FROM customers
WHERE FirstName LIKE 'A%';

SELECT * FROM customers
WHERE Email LIKE '%gmail%';

SELECT * FROM customers
WHERE LastName LIKE '%singh';

SELECT * FROM Accounts
WHERE AccountType IN ('Savings', 'Current');

SELECT * FROM Transactions
WHERE TransactionType IN ('Deposit', 'Withdrawal');

SELECT * FROM customers
WHERE CustomerID IN (101,102,105);

SELECT *
FROM Customers
ORDER BY LastName ASC;


SELECT *
FROM Accounts
WHERE AccountType = 'Savings'
ORDER BY Balance DESC;

SELECT * FROM customers
WHERE FirstName LIKE 'S%'
LIMIT 5;

SELECT *
FROM Customers
ORDER BY LastName ASC;

SELECT *
FROM Accounts
ORDER BY Balance DESC;

SELECT *
FROM Transactions
ORDER BY TransactionDate DESC;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 3;

SELECT *
FROM Transactions
WHERE TransactionType IN ('Credit','Debit')
ORDER BY TransactionDate DESC;



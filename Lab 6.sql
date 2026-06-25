SELECT SUM(Balance) as Total_Balance FROM accounts;
SELECT SUM(Balance) as Total_Balance
FROM Accounts
WHERE AccountType = "Savings";

SELECT avg(Balance) as Average_Balance from Accounts;

SELECT max(Balance) as Highest_Balance from Accounts;

SELECT min(Balance) as Lowest_Balance from Accounts;

SELECT count(*) as Total_Customer from Customers;

SELECT AccountType, sum(Balance) as Total_Balance from Accounts GROUP BY AccountType;
SELECT AccountType, max(Balance) as Total_Balance from Accounts where AccountType = "Savings" Group BY AccountType;
SELECT AccountType, min(Balance) as Min_Balance from Accounts where AccountType = "Current" Group BY AccountType;

SELECT AccountType, sum(Balance) as Total_Balance from accounts
GROUP BY AccountType
Having Sum(Balance) >=25000;


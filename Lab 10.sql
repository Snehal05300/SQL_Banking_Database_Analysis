CREATE VIEW Suspicious_Transactions AS
SELECT TransactionID, CustomerID, TransactionType, Amount
FROM Transactions_2
WHERE Amount > 25000;
SELECT * FROM Transactions_2;
SELECT * FROM Suspicious_Transactions;

INSERT INTO Transactions_2 
VALUES 
(353, 245, 102, '2025-07-26', 76000.00, 'Deposit');

CREATE OR REPLACE VIEW Suspicious_Transactions AS
SELECT t.TransactionID, CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
c.BranchName,
t.TransactionType,
t.Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
ON t.CustomerID = t.CustomerID
WHERE t.Amount > 25000;

SELECT TransactionID, CustomerName, BranchName, TransactionType, Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;
SELECT * FROM Suspicious_Transactions;
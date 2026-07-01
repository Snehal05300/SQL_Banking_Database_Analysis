SELECT 
TransactionID,
CustomerID,
TransactionType,
Amount
FROM Transactions_2
WHERE Amount > (SELECT AVG(Amount) FROM Transactions_2);

ALTER TABLE Customers_2
ADD BranchName VARCHAR(50);

UPDATE Customers_2 SET BranchName = 'Mumbai' WHERE CustomerID IN (101, 104, 107);
UPDATE Customers_2 SET BranchName = 'Pune'   WHERE CustomerID IN (102, 105);
UPDATE Customers_2 SET BranchName = 'Nashik' WHERE CustomerID IN (103, 106);
UPDATE Customers_2 SET BranchName = 'Nagpur' WHERE CustomerID = 108;

SELECT
    t.TransactionID,
    t.CustomerID,
    (
        SELECT CONCAT(c.FirstName, ' ', c.LastName)
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS CustomerName,
    (
        SELECT c.BranchName
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS BranchName,
    t.TransactionType,
    t.Amount
FROM Transactions_2 t
ORDER BY BranchName, t.CustomerID;

 SELECT * FROM Customers_2;
 INSERT INTO Customers_2
 VALUES (109, 'Snehal', 'Kuvalekar', 'snehal.k@gmail.com', '3297561478', '2025-06-07', '2005-09-03', 'Dadar');
 SELECT * FROM Transactions_2;
 INSERT INTO Transactions_2 
 VALUES (311, 209, 109, '2025-07-06', 60000.00, 'Deposit');
 
 INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES
(320, 210, 109, '2025-05-10',  60000.00, 'Deposit'),
(321, 213, 109, '2025-05-10',  30000.00, 'Withdrawal');
SELECT * FROM Transactions_2;
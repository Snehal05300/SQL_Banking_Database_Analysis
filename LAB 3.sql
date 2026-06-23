INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateofBirth)
VALUES
(103, 'Amit', 'Joshi', 'amit.joshi@gmail.com', '9123456780', '2025-09-01', '1995-03-15'),
(104, 'Sneha', 'Kulkarni', 'sneha.k@gmail.com', '9234567891', '2025-06-02', ' 1997-08-10'),
(105, 'Neha', 'Singh', 'nehasin.gh@gmail.com', '9632587412', '2025-04-05', '1998-04-12');

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Priya', 'Patel', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20'),
(103, 'Amit', 'Joshi', 'amit.joshi@gmail.com', '9123456780', '2025-09-01', '1995-03-15'),
(104, 'Sneha', 'Kulkarni', 'sneha.k@gmail.com', '9234567891', '2025-06-02', ' 1997-08-10'),
(105, 'Neha', 'Singh', 'nehasin.gh@gmail.com', '9632587412', '2025-04-05', '1998-04-12');

SELECT * FROM Customers;
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(203, 103, 'Current', 15000),
(204, 104, 'Savings', 30000),
(205, 105, 'Current', 20000);
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);
Select * from customers;
Select * from accounts;
Select * from Transactions
INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 202, '2025-06-01', 5000, 'Credit');
Select * from Branches

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(401, 'Andheri Branch', 'Mumbai Andheri East', '9871111111'),
(402, 'Borivali Branch', 'Mumbai Borivali West', '9872222222'),
(403, 'Thane Branch', 'Thane West', '9873333333'),
(404, 'Pune Branch', 'Pune Shivajinagar', '9874444444'),
(405, 'Navi Mumbai Branch', 'Vashi', '9875555555');



INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201,401, '2025-05-01')

UPDATE Customers
SET Phone = '9137893397'
WHERE CustomerID = 102;
Select * from Customers;

UPDATE Customers
SET Phone = '999999999'
Where CustomerID =102;

UPDATE Customers
SET Email = 'priya.patil@gmail.com'
Where CustomerID = 102;

#DELETE
DELETE FROM Transactions
Where TransactionID = 301;

DELETE FROM Accounts
Where AccountID = 202;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(203, 103, 'Current', 15000),
(204, 104, 'Savings', 30000),
(205, 105, 'Current', 20000);

UPDATE Customers
SET FirstName = 'Rahul'
Where CustomerID = 101;
UPDATE Customers
SET LastName = 'Sharma'
Where CustomerID = 101;
UPDATE Customers
SET Email = 'rahul.sharma@gmail.com'
Where CustomerID = 101;

UPDATE Customers
SET Phone = '999999999'
Where CustomerID =101;
UPDATE Customers
SET Phone = '9988776655'
Where CustomerID =102;
UPDATE Customers
SET AccountCreationDate = '1998-07-12'
Where CustomerID =101;
UPDATE Customers
SET DateofBirth = '1998-07-12'
Where CustomerID =101;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateofBirth)
VALUES
(106, 'Rohit', 'Verma', 'rohit.verma@gmail.com', '9345678912', '2025-06-03', '1997-08-10'),
(107, 'Karan', 'Mehta', 'karan.mehta@gamil.com', '9567891234', '2025-06-05', '1996-06-30');
UPDATE Accounts
SET CustomerID  = '101'
Where CustomerID =102;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, '102', 'Current', '40000'),
(206,'106', 'Current', '50000'),
(207, '107', 'Savings', '35000');
UPDATE Accounts
SET AccountType  = 'Savings'
Where AccountID =203;
UPDATE Accounts
SET AccountType  = 'Current'
Where AccountID =204;
SELECT * FROM Accounts;
UPDATE Accounts
SET AccountType  = 'Savings'
Where AccountID =205
UPDATE Accounts
SET Balance = '45000'
Where AccountID =204;
UPDATE Accounts
SET Balance = '30000'
Where AccountID =203;
SELECT * FROM Transactions;
INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, '201', '2025-06-01', '5000', 'Credit'),
(302, '201', '2025-06-02', '2000', 'Debit'),
(303, '202', '2025-06-03', '10000', 'Credit'),
(304, '202', '2025-06-04', '3000', 'Debit'),
(305, '201', '2025-06-05', '1500', 'Debit');

Select * from AccountBranches;
INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201, '401', '2025-05-01'),
(201, '402', '2025-05-02'),
(202, '403', '2025-05-03'),
(202, '404', '2025-05-04'),
(201, '405', '2025-05-05');

SELECT * FROM Loans
INSERT INTO Loans
(LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(501, '101', '500000', '8.5', '2025-01-01', '2030-01-01'),
(502, '102', '300000', '9.0', '2025-02-01', '2029-02-01'),
(503, '101', '200000', '7.5', '2025-03-01', '2028-03-01'),
(504, '102', '150000', '8.0', '2025-04-01', '2027-04-01'),
(505, '101', '100000', '9.5', '2025-05-01', '2026-05-01');
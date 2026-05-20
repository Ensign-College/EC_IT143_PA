/*
========================================================
Author: Your Name
Assignment: W3.4 Adventure Works – Create Answers
Database: AdventureWorks
Estimated Runtime: ~5–10 seconds
========================================================
*/

USE AdventureWorks2022;
GO

/* ========================================================
🧠 EASY QUESTIONS
======================================================== */

-- EASY QUESTION 1
-- List all people in the Person table
SELECT * 
FROM Person.Person;

-- EASY QUESTION 2
-- Show first and last names of all people
SELECT FirstName, LastName
FROM Person.Person;


/* ========================================================
⚖️ MODERATE QUESTIONS
======================================================== */

-- MODERATE QUESTION 1
-- Show top 10 sales orders
SELECT TOP 10 SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
ORDER BY OrderDate DESC;

-- MODERATE QUESTION 2
-- Count number of orders per customer
SELECT CustomerID, COUNT(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY TotalOrders DESC;


/* ========================================================
🔥 HARD QUESTIONS
======================================================== */

-- HARD QUESTION 1
-- Join customers with their sales orders
SELECT 
    p.BusinessEntityID,
    p.FirstName,
    p.LastName,
    soh.SalesOrderID,
    soh.TotalDue
FROM Person.Person p
JOIN Sales.SalesOrderHeader soh
    ON p.BusinessEntityID = soh.CustomerID
ORDER BY soh.TotalDue DESC;

-- HARD QUESTION 2
-- Customers with more than 5 orders
SELECT CustomerID, COUNT(SalesOrderID) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING COUNT(SalesOrderID) > 5
ORDER BY OrderCount DESC;


/* ========================================================
📊 METADATA QUESTIONS
======================================================== */

-- METADATA QUESTION 1
-- List all tables in the database
SELECT TABLE_NAME, TABLE_SCHEMA
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

-- METADATA QUESTION 2
-- Show column details for Person.Person table
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Person'
AND TABLE_SCHEMA = 'Person';
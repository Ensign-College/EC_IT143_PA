/* =========================================
   EC_IT143 Week 5.2 Assignment
   Dataset: MyFC
   Student: Prince Agyei
   ========================================= */

   
-- Q1: How many players are in the team?

SELECT COUNT(*) AS TotalPlayers
FROM dbo.tblplayerdim;

-- Q2: How many teams are there?

SELECT COUNT(*) AS TotalTeams
FROM dbo.tblteamdim;

-- Q3: What is the average age of players?

SELECT AVG(Age) AS AvgAge
FROM Players;


-- Q3: Which player has the highest salary?

SELECT TOP 1 Name, Salary
FROM Players
ORDER BY Salary DESC;
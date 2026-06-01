/* =========================================
   EC_IT143 Week 5.2 Assignment
   Dataset: MyFC
   Student: Prince Agyei
   ========================================= */

   
-- Q1: How many players are in the team?
-- Author: Me
SELECT COUNT(*) AS TotalPlayers
FROM dbo.tblplayerdim;

-- Q2: How many teams are there?
-- Author: Me
SELECT COUNT(*) AS TotalTeams
FROM dbo.tblteamdim;


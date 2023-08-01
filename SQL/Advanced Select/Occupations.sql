/*
https://www.hackerrank.com/challenges/occupations/problem
*/
-- Solution
CREATE TABLE Temp1(ID INT IDENTITY(1,1),Doctor NVARCHAR(255));
CREATE TABLE Temp2(ID INT IDENTITY(1,1),Professor NVARCHAR(255));
CREATE TABLE Temp3(ID INT IDENTITY(1,1),Singer NVARCHAR(255));
CREATE TABLE Temp4(ID INT IDENTITY(1,1),Actor NVARCHAR(255));

INSERT INTO Temp1
SELECT Name FROM OCCUPATIONS WHERE Occupation = 'Doctor' ORDER BY Name ASC;
INSERT INTO Temp2
SELECT Name FROM OCCUPATIONS WHERE Occupation = 'Professor' ORDER BY Name ASC;
INSERT INTO Temp3
SELECT Name FROM OCCUPATIONS WHERE Occupation = 'Singer' ORDER BY Name ASC;
INSERT INTO Temp4
SELECT Name FROM OCCUPATIONS WHERE Occupation = 'Actor' ORDER BY Name ASC;

SELECT Temp1.Doctor, Temp2.Professor, Temp3.Singer, Temp4.Actor
FROM 
    Temp1 FULL OUTER JOIN Temp2
ON  Temp1.ID = Temp2.ID FULL OUTER JOIN Temp3
ON  Temp2.ID = Temp3.ID FULL OUTER JOIN Temp4
ON  Temp3.ID = Temp4.ID

-- NOTE: This solution doesn't seem very good for the system, but I think it will be easy to understand even for newbies ^^

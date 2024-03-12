CREATE PROCEDURE SelectAllEmployee @City NVARCHAR(30)
AS
SELECT * FROM Employee WHERE City = @City
GO;


EXCE SelectAllEmployee @City ='Bhairopur';

SELECT * FROM Employee

SELECT Id,Name,DateOfBirth, dbo.CalculateDateOfBirth(Age) AS Age FROM Employee
WHERE dbo.CalculateDateOfBirth(Age) > 20

SELECT dbo.CalculateDateOfBirth('07/23/2000') AS Age
 

CREATE FUNCTION CalculateDateOfBirth(@DOB Date)
RETURNS DATE
AS
BEGIN
DECLARE @DateOfBirth Date

SET @DateOfBirth = DATEDIFF(YEAR, @DOB,GETDATE())  -
			  CASE 
			   WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
			        (MONTH(@DOB) = MONTH(GETDATE()) AND DAY (@DOB) > DAY(GETDATE()))
			   THEN 1
			   ELSE 0		   
			  END

RETURN @DateOfBirth
END

EXECUTE spCalculateAge '07/23/2000'

CREATE PROC spCalculateAge
@DOB Date
AS
BEGIN
DECLARE @Age INT

SET @Age = DATEDIFF(YEAR, @DOB,GETDATE())  -
			  CASE 
			   WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
			        (MONTH(@DOB) = MONTH(GETDATE()) AND DAY (@DOB) > DAY(GETDATE()))
			   THEN 1
			   ELSE 0		   
			  END

SELECT @Age
END



SELECT * FROM Employee

ALTER TABLE Employee
ADD  DateOfBirth DATE;


UPDATE Employee
SET DateOfBirth = '08/11/2017'
WHERE Id = 6;


CREATE FUNCTION CalculateAge(@dob DATE)
RETURNS INT
AS
BEGIN
    DECLARE @age INT;

    SET @age = DATEDIFF(YEAR, @dob, GETDATE());

    RETURN @age;
END;

SELECT Name, DateOfBirth, dbo.CalculateAge(DateOfBirth) AS Age
FROM Employee
WHERE dbo.CalculateAge(DateOfBirth) < 20;


SELECT * FROM Employee

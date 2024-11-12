SELECT * FROM Employeess

ALTER TABLE Employeess
ADD EmployeeType NVARCHAR(50);

UPDATE Employeess
SET EmployeeType = 'Intern'
WHERE Id = 14;

DROP PROCEDURE IF EXISTS spAddEmployeess;

USE TestDB;
GO
SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetAllEmployeess';

USE TestDB;
GO

CREATE PROCEDURE spGetAllEmployeess
AS
BEGIN
    SELECT * FROM Employeess;
END;
GO



USE TestDB;
GO
EXEC sp_helptext 'spGetAllEmployeess';



USE TestDB;
GO
CREATE PROCEDURE spAddEmployeess
    @Name NVARCHAR(50),
    @Gender NVARCHAR(10),
    @Age INT,
    @Salary DECIMAL(18, 2),
    @City NVARCHAR(50),
    @Email NVARCHAR(100),
	@EmployeeType NVARCHAR(50)
AS
BEGIN
    
    INSERT INTO Employeess (Name, Gender, Age, Salary, City, Email, EmployeeType)
    VALUES (@Name, @Gender, @Age, @Salary, @City, @Email, @EmployeeType)
    
END


CREATE PROCEDURE spUpdateEmployeess
    @Id INT,
    @Name NVARCHAR(50),
    @Gender NVARCHAR(10),
    @Age INT,
    @Salary DECIMAL(18, 2),
    @City NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN

	IF EXISTS (SELECT 1 FROM Employeess WHERE Id = @Id)
	BEGIN
   
		UPDATE Employeess
		SET Name = @Name,
			Gender = @Gender,
			Age = @Age,
			Salary = @Salary,
			City = @City,
			Email = @Email
		WHERE Id = @Id
END
ELSE
BEGIN
	PRINT'Employee not found';

	END
END;


CREATE PROCEDURE spDeleteEmployeess
    @Id INT
AS
BEGIN

	IF EXISTS (SELECT 1 FROM Employeess WHERE Id = @Id)
	BEGIN
    
    DELETE FROM Employeess
    WHERE Id = @Id
END
ELSE
BEGIN
	PRINT'Émployee not found';
	
   END
END;


CREATE PROCEDURE spGetAllEmployeess
AS
BEGIN
    
    SELECT * FROM Employeess order by Id 
END

EXEC spDeleteEmployeess @Id = 20;


EXEC spUpdateEmployeess 
    @Id = 20,
    @Name = 'Rahul Sharma',
    @Gender = 'Male',
    @Age = 30,
    @Salary = 60000,
    @City = 'Delhi',
    @Email = 'rahul.sharma@example.com';

select * from Student


CREATE TABLE Student (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Gender NVARCHAR(10),
    Age INT,
    Email NVARCHAR(100),
    Department NVARCHAR(50),
    PhoneNumber NVARCHAR(15),
	City NVARCHAR(50)
);

INSERT INTO Student (Name, Gender, Age, Email, Department, PhoneNumber, City)
VALUES ('Khalid', 'Male', 24, 'khalid@gmail.com', 'MBA', '8087456512', 'Hajipur');


CREATE PROCEDURE spAddStudent
    @Name NVARCHAR(100),
    @Gender NVARCHAR(10),
    @Age INT,
    @Email NVARCHAR(100),
    @Department NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @City NVARCHAR(50)
AS
BEGIN
    INSERT INTO Student (Name, Gender, Age, Email, Department, PhoneNumber, City)
    VALUES (@Name, @Gender, @Age, @Email, @Department, @PhoneNumber, @City)
END


CREATE PROCEDURE spUpdateStudent
    @Id INT,
    @Name NVARCHAR(100),
    @Gender NVARCHAR(10),
    @Age INT,
    @Email NVARCHAR(100),
    @Department NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @City NVARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Student WHERE Id = @Id)
    BEGIN
        UPDATE Student
        SET Name = @Name,
            Gender = @Gender,
            Age = @Age,
            Email = @Email,
            Department = @Department,
            PhoneNumber = @PhoneNumber,
            City = @City
        WHERE Id = @Id
    END
    ELSE
    BEGIN
        PRINT 'Student not found';
    END
END


CREATE PROCEDURE spDeleteStudent
    @Id INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Student WHERE Id = @Id)
    BEGIN
        DELETE FROM Student
        WHERE Id = @Id
    END
    ELSE
    BEGIN
        PRINT 'Student not found';
    END
END


CREATE PROCEDURE spGetAllStudents
AS
BEGIN
    SELECT * FROM Student ORDER BY Id
END



SELECT * FROM Student

ALTER PROCEDURE  [SelectAllStudent]
	@Address VARCHAR (20)

AS 
BEGIN 

SET NOCOUNT ON;
SELECT * FROM Student WHERE Address =@Address
END;

EXEC SelectAllStudent @Address ='Bhairopur';

EXEC SelectAllStudent @Address ='Howhra';

CREATE PROCEDURE SelectAllStudent 
AS
SELECT * FROM Student
GO;

EXEC SelectAllStudent;

SELECT * FROM Student

CREATE PROCEDURE SelectALLStudent @Address NVARCHAR(30)
AS
SELECT * FROM Student WHERE Address = @Address
END;

EXEC SelectAllStudent @Address = 'Bhairopur';

CREATE PROCEDURE SelectALLStudent @Address NVARCHAR(30), @Name VARCHAR(20)
AS
SELECT * FROM Student WHERE Address = @Address AND Name = @Name
END;

EXEC SelectAllStudent @Address = 'Bhairopur', @Name = 'Ehtashamul Haque';

SELECT * FROM Employee


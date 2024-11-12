SELECT * FROM Employee

SELECT * FROM Department

CREATE TABLE Employeess (
    id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Salary INT,
    City VARCHAR(50)
);

SELECT * FROM Employeess

INSERT INTO Employeess (Name, Gender, Age, Salary, City)
VALUES 
('Ehtashamul', 'Male', 25, 60000, 'Delhi'),
('Ehtramul', 'Male', 23, 55000, 'Patna'),
('Nada', 'Female', 18, 52000, 'Hajipur'),
('Fiza','Female',24,45000,'Kolkata'),
('Zishan','Male',33,40000,'Kolkata'),
('Faizan','Male',27,46000,'Bangalore'),
('Kausar','Male',30,30000,'Siwan'),
('Dilshad','Male',28,35000,'Madhubani'),
('Ehasan','Male',26,28000,'Hyderabad');

CREATE PROCEDURE spGetEmployeess
AS
BEGIN
	select * FROM Employeess
END;

EXECUTE spGetEmployeess



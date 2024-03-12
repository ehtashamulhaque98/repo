CREATE TABLE Employees(
   Employee_Id INT PRIMARY KEY,
   Employee_Name VARCHAR(50),
   Manager_Id INT
);

SELECT * FROM Employees

INSERT INTO Employees (Employee_Id, Employee_Name, Manager_Id)
VALUES  (5, 'Farhan', 4)


SELECT e.Employee_Name AS Employee, m.Employee_Name AS Manager, m.Employee_Id AS Id
FROM Employees e
JOIN Employees m ON e.Manager_Id = m.Employee_Id;


SELECT m.Employee_Name AS Manager,
    COUNT(e.Employee_Id) AS Number_Employees
FROM Employees e
JOIN Employees m ON e.Manager_Id = m.Employee_Id
GROUP BY m.Employee_Name
HAVING COUNT (e.Employee_Id) < 5;


SELECT * FROM Employees

SELECT * FROM Employee

SELECT * FROM Customer

SELECT Name FROM Customer
UNION 
SELECT Name FROM Employee;

SELECT Name FROM Customer
UNION ALL
SELECT Name FROM Employee;


SELECT COUNT (Employee_Id)
FROM Employees
HAVING COUNT (Employee_Id) >3;


CREATE TABLE EmployeesIn (
    Id INT IDENTITY(1,1)  PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary VARCHAR(20)
);

SELECT * FROM EmployeesIn

INSERT INTO EmployeesIn (Name, Department, Salary)
VALUES ('Taudhid','Admin','30000');

SELECT Id,
	   Name,
	   CASE 
	       WHEN Salary >50000 THEN 'High Salary'
		   WHEN Salary <35000 THEN 'Medium Salary'
		    ELSE 'Low Salary'
			END AS Salary_Category
			FROM EmployeesIn;

SELECT *
FROM EmployeesIn
WHERE 
    CASE 
        WHEN CAST(salary AS DECIMAL) >= 30000 AND CAST(salary AS DECIMAL) < 50000 THEN '30K-50K'
        WHEN CAST(salary AS DECIMAL) >= 60000 AND CAST(salary AS DECIMAL) < 70000 THEN '60K-70K'
        ELSE '70K+'
    END = '30K-50K'; 


UPDATE EmployeesIn
SET Salary =
    CASE 
        WHEN Salary >= 30000 AND Salary < 50000  
		
		''THEN 'Grade A'
        WHEN Salary >= 50000 AND Salary < 70000 THEN 'Grade B'
        ELSE 'Grade C'
    END;

WITH IT_Employees AS (
    SELECT *
    FROM EmployeesIn
    WHERE department = 'IT'
)
SELECT *
FROM IT_Employees;


SELECT * FROM EmployeesIn WHERE Department = 'IT';

SELECT * FROM Employee

SELECT * FROM Department


SELECT *
FROM Employee
WHERE DepartmentID IN (SELECT DepartmentID FROM Department WHERE DepartmentName = 'IT');

SELECT * FROM Employee
WHERE DepartmentId ='1';


SELECT Employee.Id, Employee.Name, Department.DepartmentName
FROM Employee
INNER JOIN Department ON Employee.Id = Department.DepartmentId;

SELECT Employee.Id, Employee.Name, Department.DepartmentName
FROM Employee
CROSS JOIN Department; 


SELECT * FROM Employee

SELECT Name FROM Employee;

SELECT DISTINCT  DepartmentId FROM Employee;

SELECT DepartmentId FROM Employee;

SELECT * FROM Employee
WHERE Name ='Ehtashamul';

SELECT * FROM Employee
WHERE Id ='1';

SELECT * FROM Employee
ORDER BY Gender;


SELECT * FROM Employee
WHERE Name = 'Ehtashamul' AND Id= '1';

SELECT * FROM Employee
WHERE NOT Name = 'EHtashamul';

UPDATE Employee
SET DepartmentId ='1'
WHERE Id= '1';

DELETE FROM Employee WHERE Id ='1';

SELECT TOP 3 * FROM Employee;

SELECT * FROM EmployeesIn



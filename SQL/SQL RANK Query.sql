SELECT * FROM Employee

SELECT * FROM Department
 
SELECT * FROM Address

SELECT MAX (Salary) 
FROM Employee;


SELECT MAX(Salary) AS HighestSalary
FROM Employee;


SELECT * FROM Employee
WHERE Salary=(SELECT MAX (Salary) FROM Employee);

SELECT * FROM Employee
WHERE Salary=(SELECT MIN (Salary) FROM Employee);

SELECT DISTINCT (Salary) FROM Employee E1
WHERE 3-1=(SELECT COUNT(DISTINCT(E2.Salary))FROM Employee E2
		   WHERE E2.Salary>E1.Salary)

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp 
WHERE Salary_Rank=3;

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp 
WHERE Salary_Rank=4;

SELECT MAX (Salary) FROM Employee
WHERE Salary < (SELECT MAX (Salary) FROM Employee);

SELECT * FROM Employee

SELECT DISTINCT TOP 3 Salary
FROM Employee
ORDER BY Salary DESC


SELECT
EmployeeID,
Salary,
RANK() OVER (ORDER BY Salary DESC) AS rank
FROM Employee;


SELECT 
EmployeeID,
Salary,
DENSE_RANK() OVER (ORDER BY Salary DESC) AS demse_rank
FROM Employee;





SELECT * FROM Employee

SELECT * FROM Department

SELECT * FROM Address


SELECT * FROM Employee  INNER JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;


SELECT * FROM Employee  LEFT JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  RIGHT JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  FULL OUTER JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee INNER JOIN Department
ON Employee.DepartmentId = Department.Id;

SELECT * FROM Employee LEFT JOIN Department
ON Employee.DepartmentId = Department.Id;

SELECT * FROM Employee RIGHT JOIN Department
ON Employee.DepartmentId = Department.Id;

SELECT * FROM Employee FULL OUTER JOIN Department
ON Employee.DepartmentId = Department.Id;
SELECT * FROM Student

SELECT * FROM Course

SELECT * FROM Enrollment

INSERT INTO Student SELECT * FROM Course ;

SELECT * FROM Orders

SELECT * FROM Brand

SELECT * FROM Product

SELECT Product_Type
FROM Product
WHERE Id =ANY
	(SELECT Id
	FROM Orders 
	WHERE Quntity < 8);

SELECT Product_Type
FROM Product
WHERE Id =ALL
	(SELECT Id
	FROM Orders 
	WHERE Quntity < 8);

SELECT ALL Product_Type
FROM Product
WHERE MRP =2500; 

SELECT Product_Type
FROM Product
WHERE Id = ALL ( SELECT Id FROM Orders WHERE Quntity > 5);

SELECT MRP
FROM Product
WHERE EXISTS (SELECT Quntity FROM Orders WHERE Orders.ProductId = Product.Product_Type AND MRP <2500);

SELECT * FROM Employee

SELECT * FROM Department

SELECT *
FROM Employee INNER JOIN Department
ON Employee.DepartmentId = Department.Id;

SELECT * FROM Employee
WHERE EXISTS (SELECT * FROM Department WHERE Department.ID =Employee.EmployeeID);

SELECT EmployeeID,Name,Salary
FROM Employee
WHERE EmployeeID NOT IN (SELECT DISTINCT Id FROM Department);


SELECT Product_Type
FROM Product
WHERE Id =ANY
	(SELECT Id
	FROM Orders 
	WHERE Quntity < 8);

SELECT Product_Type
FROM Product
WHERE Id =ALL
	(SELECT Id
	FROM Orders 
	WHERE Quntity < 8);

SELECT Fee
FROM Course
WHERE EXISTS
(SELECT Name FROM Student WHERE Student.CourseId = Course.Id AND Fee <40000);

SELECT Name 
FROM Student
WHERE EXISTS 
(SELECT Name FROM Course WHERE Student.CourseId = Course.Id AND Fee < 40000);

SELECT Name 
FROM Course
WHERE EXISTS 
(SELECT Name FROM Course WHERE Course.Id = Course.Id AND Fee < 40000);

SELECT * FROM Student
WHERE  EXISTS (SELECT Id FROM Course WHERE Student.CourseId =Course.Id);





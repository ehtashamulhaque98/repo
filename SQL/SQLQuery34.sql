SELECT CourseId,Name,COUNT (*)
FROM Student
GROUP BY CourseId,Name
ORDER BY Name;

SELECT *
FROM Course INNER JOIN Student
ON Course.Id = Student.CourseId;

SELECT Course.Id,Course.Name,COUNT (Student.Id) AS Name_Student
FROM Course
LEFT JOIN Student ON Course.Id = Student.CourseId
GROUP BY Course.Id, Course.Name;

SELECT * 
FROM Product INNER JOIN Orders
ON Product.Id =Orders.Id;

SELECT *
FROM  Product INNER JOIN Brand
ON Product.Id = Brand.Id
INNER   JOIN Orders
ON Product.Id = Orders.Id;

SELECT Product.*,Brand.*,Orders.Status
FROM  Product INNER JOIN Brand
ON Product.Id = Brand.Id
INNER   JOIN Orders
ON Product.Id = Orders.Id;

SELECT Product.*,Brand.*,Orders.*
FROM  Product INNER JOIN Brand
ON Product.Id = Brand.Id
INNER   JOIN Orders
ON Product.Id = Orders.Id;

SELECT * FROM Orders

SELECT * FROM Brand

SELECT * FROM Product




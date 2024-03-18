CREATE TABLE Brand (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR (50)
);

SELECT * FROM Brand

SELECT * FROM Product

SELECT * FROM Orders

INSERT INTO Brand (Name) VALUES ('Lenovo');

CREATE TABLE Product (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR (50),
	Product_Type VARCHAR (50),
	BrandId INT,
	MRP INT
);

INSERT INTO Product (Name,Product_Type,BrandId,MRP) VALUES ('HP Laptop ','Laptop','7','60000');

ALTER TABLE Product
ADD FOREIGN KEY(Id) REFERENCES Brand (Id);

SELECT * FROM Product INNER JOIN Brand
ON Product.Id = Brand.Id;

SELECT * FROM Product LEFT JOIN Brand
ON Product.Id = Brand.Id;

SELECT * FROM Product RIGHT JOIN Brand
ON Product.Id = Brand.Id;

SELECT * FROM Product FULL OUTER JOIN Brand
ON Product.Id = Brand.Id;

SELECT MAX (MRP) AS Product
FROM product;

SELECT MIN (MRP) AS Product
FROM product;

SELECT * FROM (
SELECT Name,MRP,DENSE_RANK()
OVER(ORDER BY MRP DESC) AS MRP_Rank
FROM Product)
AS Temp
WHERE MRP_Rank=3;

CREATE TABLE Orders (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	ProductId INT,
	Quntity INT,
	Status VARCHAR(50)
);

SELECT * FROM Orders

SELECT * FROM Product

SELECT * FROM Brand

ALTER TABLE Product
DROP COLUMN BrandId;

INSERT INTO Orders (ProductId,Quntity,Status) VALUES ('7','7','Deleviry');


ALTER TABLE Orders
ADD FOREIGN KEY(ProductId) REFERENCES Product(Id);

SELECT * FROM Product INNER JOIN Orders
ON Product.Id = Orders.Id;

SELECT * FROM Product LEFT JOIN Orders
ON Product.Id = Orders.Id;

SELECT * FROM Product RIGHT JOIN Orders
ON Product.Id = Orders.Id;

SELECT * FROM Product FULL OUTER  JOIN Orders
ON Product.Id = Orders.Id;

SELECT MAX (Quntity)  AS Orders
FROM Orders;

SELECT MIN (Quntity)  AS Orders
FROM Orders;

SELECT Product.Id,Product.Product_Type,Product.MRP,Brand.Id,Brand.Name,Orders.Id,Orders.ProductId,Orders.Quntity,Orders.Status
FROM  Product INNER JOIN Brand
ON Product.Id = Brand.Id
INNER   JOIN Orders
ON Product.Id = Orders.Id;

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

SELECT Product.Id,Product.Name,Product.Product_Type,Product.BrandId,Product.MRP,Brand.Id,Brand.Name,Orders.Id,Orders.ProductId,Orders.Quntity,Orders.Status
FROM  Product LEFT	 JOIN Brand
ON Product.Id = Brand.Id
LEFT   JOIN Orders
ON Product.Id = Orders.Id;

SELECT COUNT  (MRP)
FROM Product
GROUP BY (MRP)
ORDER BY COUNT (MRP) DESC;

SELECT MAX (MRP)
FROM Product
GROUP BY (MRP)
ORDER BY MAX (MRP)DESC ;

SELECT MIN (MRP)
FROM Product
GROUP BY (MRP)
ORDER BY MIN (MRP) ;

SELECT AVG (MRP)
FROM Product
GROUP BY (MRP)
ORDER BY AVG (MRP) ;

SELECT SUM (MRP)
FROM Product
GROUP BY (MRP)
ORDER BY SUM (MRP) ;

SELECT AVG (MRP)
FROM Product;

SELECT SUM (MRP)
FROM Product;

SELECT BrandId , COUNT(*) AS Product_Count
FROM Product
GROUP BY BrandId;

SELECT BrandId , COUNT(*) AS Product_Count
FROM Product INNER JOIN Brand
ON Product.BrandId =Brand.Id
GROUP BY BrandId;

SELECT Brand.Name , COUNT(*) AS Product_Count
FROM Product INNER JOIN Brand
ON Product.BrandId =Brand.Id
GROUP BY Brand.Name;



SELECT MAX (MRP)
FROM Product;


SELECT COUNT(*) AS Brand_Name
FROM Product
WHERE Name='Dell';

SELECT COUNT(*) AS "Brand_Name" 
  FROM Product
  WHERE Name ='Laptop';









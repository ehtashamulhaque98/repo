CREATE TABLE Customer_Type (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Customer_Type VARCHAR (50)

);

INSERT INTO Customer_Type (Customer_Type) VALUES ('Normal');

SELECT * FROM Customer_Type

CREATE TABLE Customer_Address_Type (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Address_Type VARCHAR (50)
);

INSERT INTO Customer_Address_Type (Address_Type)VALUES ('Office');

SELECT * FROM Customer_Address_Type

CREATE TABLE Customer_Address (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	CustomerId INT,
	Address VARCHAR(50),
	Address_TypeId INT
	
);

INSERT INTO Customer_Address (CustomerId,Address,Address_TypeId) VALUES  (10,'Gaya',1);

SELECT * FROM Customer_Address



CREATE TABLE Customer (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR (50),
	Email VARCHAR(50),
	Customer_TypeId INT

);

INSERT INTO Customer (Name,Email,Customer_TypeId) VALUES (' Zishan Hassan','zishanhassan15@gmail.com',2);


SELECT * FROM Customer


ALTER TABLE Customer
ADD FOREIGN KEY (Customer_TypeId) REFERENCES Customer_Type(Id);


ALTER TABLE Customer_Address
ADD FOREIGN KEY (Address_TypeId) REFERENCES Customer_Address_Type(Id);

ALTER TABLE Customer_Address
ADD FOREIGN KEY (CustomerId) REFERENCES Customer(Id);

SELECT * FROM Customer

SELECT * FROM Customer_Address

SELECT * FROM Customer_Type

SELECT * FROM Customer_Address_Type


SELECT *
FROM  Customer INNER JOIN Customer_Type
ON Customer.Id = Customer_Type.Id
INNER   JOIN Customer_Address_Type
ON Customer.Id = Customer_Address_Type.Id
INNER JOIN Customer_Address
ON Customer.Id =Customer_Address.Id;

SELECT *
FROM  Customer LEFT JOIN Customer_Type
ON Customer.Id = Customer_Type.Id
LEFT JOIN Customer_Address_Type
ON Customer.Id = Customer_Address_Type.Id
LEFT JOIN Customer_Address
ON Customer.Id =Customer_Address.Id;

SELECT *
FROM  Customer RIGHT JOIN Customer_Type
ON Customer.Id = Customer_Type.Id
RIGHT JOIN Customer_Address_Type
ON Customer.Id = Customer_Address_Type.Id
RIGHT JOIN Customer_Address
ON Customer.Id =Customer_Address.Id;

SELECT *
FROM  Customer FULL OUTER JOIN Customer_Type
ON Customer.Id = Customer_Type.Id
FULL OUTER JOIN Customer_Address_Type
ON Customer.Id = Customer_Address_Type.Id
FULL OUTER JOIN Customer_Address
ON Customer.Id =Customer_Address.Id;


SELECT (Id)
FROM Customer
GROUP BY (Id)
ORDER BY (Id) DESC;

SELECT (Id)
FROM Customer
GROUP BY (Id)
ORDER BY (Id) ;


SELECT Customer_TypeId
FROM Customer
GROUP BY Customer_TypeId;

SELECT CustomerId
FROM Customer_Address
GROUP BY CustomerId
ORDER BY CustomerId;

SELECT Address,COUNT(CustomerId) FROM  Customer_Address GROUP BY Address;

SELECT Customer_Type,COUNT(Id) FROM  Customer_Type GROUP BY Customer_Type;



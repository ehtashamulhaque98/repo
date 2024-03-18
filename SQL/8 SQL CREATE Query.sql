CREATE TABLE Customer (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR (50),
	Email VARCHAR(50),
	Customer_TypeId INT

);

INSERT INTO Customer (Name,Email,Customer_TypeId) VALUES ('Ehtashamul','ehtashamulhaque10@gmail.com',1);

CREATE TABLE Customer_Address (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	CustomerId INT,
	Address VARCHAR(50),
	Address_TypeId INT

);

INSERT INTO Customer_Address (1,''Bhairopur','');

CREATE TABLE Customer_Address_Type (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Address_Type INT
);

INSERT INTO Customer_Address_Type (Address_Type)VALUES ();

CREATE TABLE Customer_Type (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Customer_Type INT

);

INSERT INTO Customer_Type (Customer_Type) VALUES ('Normal');
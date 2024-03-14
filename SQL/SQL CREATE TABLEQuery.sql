CREATE TABLE Customer (
    Customer_id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Phone_number VARCHAR(15),
    Address VARCHAR(255)
);

INSERT INTO Customer (Name, Email, Phone_number, Address)
VALUES ('Ehtashamul','ehtashamul@gmail.com', '7782862394', '123 Main Bhairopur');


SELECT * FROM Customer

CREATE TABLE Orders (
    Order_id INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    Shipping_address VARCHAR(255),
    Status VARCHAR(20)
);

INSERT INTO Orders (Customer_id, Order_date, Shipping_address, Status)
VALUES (1, '2024-02-12','123 Main Bhairopur', 'Complete');


SELECT * FROM Orders


CREATE TABLE Products (
    Product_id INT IDENTITY(1,1)  PRIMARY KEY,
    Product_name VARCHAR(100),
    Price DECIMAL(10, 2),
    Quantity INT,
    Category VARCHAR(50)
);

INSERT INTO Products (Product_name, price, Quantity, Category)
VALUES ('Dell',  50000.00, 10, 'Laptop');



SELECT * FROM Products


	
CREATE PROCEDURE AddOrder 
    @Email VARCHAR(100),
    @Products VARCHAR(100),
    @Quantity INT
AS
BEGIN

    DECLARE @CustomerID INT
    DECLARE @OrderDate DATE
    DECLARE @ShippingAddress VARCHAR(255)
    DECLARE @Status VARCHAR(20)

    SET @OrderDate = GETDATE() 
    
    
    SELECT @CustomerID = Customer_id FROM Customer WHERE Email = @Email
    
    
    BEGIN TRANSACTION

    DECLARE @Product VARCHAR(100)
    
  

    BEGIN
  
        
        INSERT INTO Orders (Customer_id, Order_date, Shipping_address, Status)
        VALUES (@CustomerID, @OrderDate, @ShippingAddress, @Status);

        
        UPDATE Products SET Quantity = Quantity - @Quantity WHERE Product_name = @Product
        
        
    END

END


EXEC AddOrder @Email ='ehtashamul@gmail.com',@Products ='Product1,product2',@Quantity ='10,11';


ALTER PROCEDURE AddOrder
     @CustomerID INT,
     @OrderDate DATE,
     @ShippingAddress VARCHAR(255),
     @Status VARCHAR(20)

AS

BEGIN

     SET NOCOUNT ON;


	 SELECT @CustomerID = Customer_id FROM Customer WHERE Email = @Email




SELECT * FROM Customer

SELECT * FROM Orders

SELECT * FROM Products

SELECT * FROM Employee

SELECT * FROM Department
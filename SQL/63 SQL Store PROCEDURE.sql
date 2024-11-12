select * FROM Employee

SELECT * FROM Department

UPDATE Department
SET DepartmentId = 3
WHERE DepartmentName = 'Accounting';

CREATE TABLE Employeess (
    id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Salary INT,
    City VARCHAR(50)
);

SELECT * FROM Employeess

UPDATE Employeess
SET id = 'Id'
WHERE id = Id;

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


ALTER TABLE Employeess
ADD Email NVARCHAR(50);


select * from Employeess


UPDATE Employeess
SET Email = 'ehtasham@gmail.com'
WHERE Id = 13;


CREATE PROCEDURE spGetEmployeess
AS
BEGIN
	select * FROM Employeess
END;

EXECUTE spGetEmployeess

CREATE PROCEDURE spInsertEmployeess
    @Name NVARCHAR(50),
    @Gender NVARCHAR(10),
    @Age INT,
    @Salary DECIMAL(18, 2),
    @City NVARCHAR(50)
	
AS
BEGIN

    INSERT INTO Employeess(Name, Gender, Age, Salary, City)
    VALUES (@Name, @Gender, @Age, @Salary, @City);
END;


ALTER PROCEDURE spInsertEmployeess
    @Name NVARCHAR(50),
    @Gender NVARCHAR(10),
    @Age INT,
    @Salary DECIMAL(18, 2),
    @City NVARCHAR(50),
    @Email NVARCHAR(50)
AS
BEGIN
    
    INSERT INTO Employeess (Name, Gender, Age, Salary, City, Email)
    VALUES (@Name, @Gender, @Age, @Salary, @City, @Email);
END;



CREATE PROCEDURE spUPDATEEmployeess
	 @Id INT,
	 @Name NVARCHAR(50),
     @Gender NVARCHAR(10),
     @Age INT,
     @Salary DECIMAL(18, 2),
     @City NVARCHAR(50)
AS
BEGIN
	UPDATE Employeess
	SET Name = @Name, Age = @Age, Salary = @Salary
	WHERE Id = @Id;
END;

CREATE PROCEDURE spDeleteEmployeess
	@Id INT
AS
BEGIN
	
	DELETE FROM Employeess
	WHERE Id = @Id;
End;



CREATE PROCEDURE spCheckEmail
    @Email NVARCHAR(50)
AS
BEGIN
    
    IF EXISTS (SELECT 1 FROM Employeess WHERE Email = @Email)
    BEGIN
        
        SELECT 'Email ID already exists' AS Message, 1 AS Status;
        RETURN;
    END
    ELSE
    BEGIN
        
        SELECT 'Email does not exist.' AS Message, 0 AS Status;
    END
END




CREATE PROCEDURE spGetDepartmentById
    @DepartmentId INT 
AS
BEGIN
   
    SELECT DepartmentId, DepartmentName
    FROM Department
    WHERE DepartmentId = @DepartmentId;
END;

EXEC spGetDepartmentById @DepartmentId = 2;

TRUNCATE TABLE Orders;

UPDATE Customer
SET Email = 'nada11@gmail.com'
WHERE Customer_id = 5;


select * from Customer

select * from Products

select * from Orders

CREATE PROCEDURE spInsertCustomer
    @Name NVARCHAR(50),
    @Email NVARCHAR(50),
    @Phone_number NVARCHAR(15),
    @Address NVARCHAR(100)
    
AS
BEGIN
    
    INSERT INTO Customer(Name, Email, Phone_number, Address)
    VALUES (@Name, @Email, @Phone_number, @Address);
END;

CREATE PROCEDURE spInsertOrders
    @Customer_id INT,
    @Order_date DATETIME,
    @Shipping_address NVARCHAR(100),
    @Status NVARCHAR(50)
    
AS
BEGIN
    
    INSERT INTO Orders(Customer_id,Order_date,Shipping_address,Status)
    VALUES (@Customer_id,@Order_date,@Shipping_address,@Status);
END;


CREATE PROCEDURE spInsertProducts
    @Product_name VARCHAR(100),
    @Price DECIMAL(10,2),
    @Quantity INT,
	@Category VARCHAR(50)
    
AS
BEGIN
    
	INSERT INTO Products (Product_name, Price, Quantity, Category)
    VALUES (@Product_name, @Price, @Quantity, @Category);
END;


ALTER TABLE Orders
ADD Product_id INT,
    Quantity INT;


ALTER PROCEDURE spInsertOrders
    @Customer_id INT,
    @Order_date DATETIME,
    @Shipping_address NVARCHAR(100),
    @Status NVARCHAR(50),
    @Product_id INT,        
    @Quantity INT           
AS
BEGIN
    
    INSERT INTO Orders (Customer_id, Order_date, Shipping_address, Status, Product_id, Quantity)
    VALUES (@Customer_id, @Order_date, @Shipping_address, @Status, @Product_id, @Quantity);

	UPDATE Products
	SET Quantity = Quantity -@Quantity
	WHERE Product_id = @Product_id;

END;


ALTER PROCEDURE spInsertOrders
    @Customer_id INT,
    @Order_date DATETIME,
    @Shipping_address NVARCHAR(100),
    @Status NVARCHAR(50),
    @Product_id INT,        
    @Quantity INT,
    @IsReturn BIT 
AS
BEGIN
	
	BEGIN TRANSACTION

	BEGIN TRY

	IF @IsReturn = 1
	BEGIN
		
		UPDATE Products
		SET Quantity = Quantity + @Quantity
		WHERE Product_id = @Product_id;

		IF @@ROWCOUNT = 0
		BEGIN
			 RAISERROR('Product not found.', 16, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END
END
ELSE
BEGIN
	
	INSERT INTO Orders (Customer_id, Order_date, Shipping_address, Status, Product_id, Quantity)
    VALUES (@Customer_id, @Order_date, @Shipping_address, @Status, @Product_id, @Quantity);

	UPDATE Products
    SET Quantity = Quantity - @Quantity
    WHERE Product_id = @Product_id;

	 IF @@ROWCOUNT = 0 OR (SELECT Quantity FROM Products WHERE Product_id = @Product_id) < 0
     BEGIN

	 RAISERROR('Product quantity cannot be less than zero or product does not exist.', 16, 1);
	 ROLLBACK TRANSACTION;
	 RETURN;

	END
END

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH

	ROLLBACK TRANSACTION;
	DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;


	   SELECT @ErrorMessage = ERROR_MESSAGE(),
              @ErrorSeverity = ERROR_SEVERITY(),
              @ErrorState = ERROR_STATE();

			 RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH;
END;

select * from Customer

select * from Products

select * from Orders

select * from Customers

select * from CustomerAddress


CREATE TABLE Customers (
    CustomerId INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(15)
);


CREATE TABLE CustomerAddress (
    AddressId INT IDENTITY PRIMARY KEY,
    CustomerId INT,
    Address NVARCHAR(100),
    City NVARCHAR(100),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);


CREATE PROCEDURE spInsertCustomers
    @Name NVARCHAR(100),
    @Email NVARCHAR(100),
    @PhoneNumber NVARCHAR(15),
    @Addresses CustomerAddressType READONLY 
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @CustomerId INT;
    
    
    INSERT INTO Customers (Name, Email, PhoneNumber)
    VALUES (@Name, @Email, @PhoneNumber);
    
    SET @CustomerId = SCOPE_IDENTITY();
    
    
    INSERT INTO CustomerAddress (CustomerId, Address, City, State, PostalCode)
    SELECT @CustomerId, Address, City, State, PostalCode
    FROM @Addresses;
    
    COMMIT TRANSACTION;
END;

CREATE TYPE CustomerAddressType AS TABLE
(
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20)
);


select * from Customers

select * from CustomerAddress

select * from Orderss


CREATE TABLE Orderss(
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT NOT NULL,
	AddressId INT NOT NULL,
    Order_Date DATETIME NOT NULL,
    Status VARCHAR(50) NOT NULL,
    Product_Id INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId), 
	FOREIGN KEY (AddressId) REFERENCES CustomerAddress(AddressId), 
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id) 
);

CREATE PROCEDURE spInsertOrderss
    @CustomerId INT,
    @AddressId INT,
    @Order_Date DATETIME,
    @Status VARCHAR(50),
    @Product_Id INT,
    @Quantity INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Orderss (CustomerId, AddressId, Order_Date, Status, Product_Id, Quantity)
    VALUES (@CustomerId, @AddressId, @Order_Date, @Status, @Product_Id, @Quantity);
END;


ALTER PROCEDURE spInsertOrderss
    @CustomerId INT,
	@AddressId INT,
    @Order_date DATETIME,
    @Status NVARCHAR(50),
    @Product_id INT,        
    @Quantity INT,
    @IsReturn BIT 
AS
BEGIN
	
	BEGIN TRANSACTION

	BEGIN TRY

	IF @IsReturn = 1
	BEGIN
		
		UPDATE Products
		SET Quantity = Quantity + @Quantity
		WHERE Product_id = @Product_id;

		IF @@ROWCOUNT = 0
		BEGIN
			 RAISERROR('Product not found.', 16, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END
END
ELSE
BEGIN
	
	INSERT INTO Orderss (CustomerId, AddressId, Order_date, Status, Product_id, Quantity)
    VALUES (@CustomerId, @AddressId, @Order_date, @Status, @Product_id, @Quantity);

	UPDATE Products
    SET Quantity = Quantity - @Quantity
    WHERE Product_id = @Product_id;

	 IF @@ROWCOUNT = 0 OR (SELECT Quantity FROM Products WHERE Product_id = @Product_id) < 0
     BEGIN

	 RAISERROR('Product quantity cannot be less than zero or product does not exist.', 16, 1);
	 ROLLBACK TRANSACTION;
	 RETURN;

	END
END

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH

	ROLLBACK TRANSACTION;
	DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;


	   SELECT @ErrorMessage = ERROR_MESSAGE(),
              @ErrorSeverity = ERROR_SEVERITY(),
              @ErrorState = ERROR_STATE();

			 RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH;
END;


CREATE PROCEDURE spInsertOrderss
    @CustomerId INT,
    @AddressId INT,
    @Order_Date DATETIME,
    @Status VARCHAR(50),
    @Product_Id INT,
    @Quantity INT,
    @IsReturn BIT
AS
BEGIN
    SET NOCOUNT ON;

    IF @IsReturn = 1
    BEGIN
        
        PRINT 'Processing return order'
        
    END
    ELSE
    BEGIN
        
        INSERT INTO Orderss (CustomerId, AddressId, Order_Date, Status, Product_Id, Quantity)
        VALUES (@CustomerId, @AddressId, @Order_Date, @Status, @Product_Id, @Quantity);
    END
END;


ALTER PROCEDURE spInsertOrderss
    @CustomerId INT,
    @AddressId INT,
    @Order_Date DATETIME,
    @Status VARCHAR(50),
    @Product_Id INT,
    @Quantity INT,
    @IsReturn BIT 
AS
BEGIN
    SET NOCOUNT ON;

    IF @IsReturn = 0
    BEGIN
        
        INSERT INTO Orderss (CustomerId, AddressId, Order_Date, Status, Product_Id, Quantity)
        VALUES (@CustomerId, @AddressId, @Order_Date, @Status, @Product_Id, @Quantity);

        
        UPDATE Products
        SET Quantity = Quantity - @Quantity
        WHERE Product_Id = @Product_Id;
    END
    ELSE
    BEGIN
        
        UPDATE Products
        SET Quantity = Quantity + @Quantity
        WHERE Product_Id = @Product_Id;

        PRINT 'Order return processed, product quantity updated.';
    END
END;

ALTER TABLE Orderss
ADD IsReturn BIT NOT NULL DEFAULT 0;  


ALTER PROCEDURE spInsertOrderss
    @CustomerId INT,
    @AddressId INT,
    @Order_Date DATETIME,
    @Status VARCHAR(50),
    @Product_Id INT,
    @Quantity INT,
    @IsReturn BIT
AS
BEGIN
    SET NOCOUNT ON;

    
    INSERT INTO Orderss (CustomerId, AddressId, Order_Date, Status, Product_Id, Quantity, IsReturn)
    VALUES (@CustomerId, @AddressId, @Order_Date, @Status, @Product_Id, @Quantity, @IsReturn);

    
    IF @IsReturn = 1
    BEGIN
        
        UPDATE Products
        SET Quantity = Quantity + @Quantity
        WHERE Product_Id = @Product_Id;
    END
    ELSE
    BEGIN
        
        UPDATE Products
        SET Quantity = Quantity - @Quantity
        WHERE Product_Id = @Product_Id;
    END
END;


SELECT * 
FROM Orderss
WHERE IsReturn = 1;



select * from Customers

select * from CustomerAddress

select * from Orderss

select * from Products

select * from Product

select * from Employeess

select * from Employee
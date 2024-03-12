 SELECT * FROM Customer

SELECT * FROM Customer_Address

SELECT * FROM Customer_Address_Type

SELECT * FROM Customer_Type

CREATE PROCEDURE InsertCustomerWithAddressNew
    @Name NVARCHAR(50),
    @Address NVARCHAR(100),
    @Address_Type NVARCHAR(20),
    @Customer_Type NVARCHAR(20),
	@Customer_TypeId NVARCHAR(20)
AS 

	INSERT INTO Customer (Name, Customer_TypeId)
    VALUES (@Name, @Customer_TypeId,);

	DECLARE @LastInsertedID INT;
	SET @LastInsertedID = SCOPE_IDENTITY();

	INSERT INTO Customer_Address (CustomerID, Address, Address_TypeId)
    VALUES (@LastInsertedID, @Address, @Address_Type);

	SELECT C.ID, C.Name, C.Customer_TypeId, CA.Address, CA.Address_TypeId
    FROM Customer AS C
    INNER JOIN Customer_Address AS CA ON C.ID = CA.CustomerID
    WHERE C.ID = @LastInsertedID;



EXEC InsertCustomerWithAddressNew @Name = 'A Hassan', @Address = 'Tajipur', @Address_Type = '2', @Customer_Type= '3', @Customer_TypeId= '1';


DROP PROCEDURE InsertCustomerWithAddressNew;

ALTER PROCEDURE InsertCustomerWithAddressNew
	@Email VARCHAR (30)

AS

BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Customer WHERE Email = @Email; 

END 




ALTER PROCEDURE InsertCustomerWithAddressNew
	@Name VARCHAR(30),
	@Email VARCHAR(30),
	@Customer_TypeId VARCHAR(30)

AS

BEGIN

	SET NOCOUNT ON;
	
	SELECT * FROM Customer WHERE Name = 'Ehtashamul Haque' AND Email ='ehtashamulhaque10@gmail.com' AND Customer_TypeId = '4';

END

ALTER PROCEDURE InsertCustomerWithAddressNew
	@Name VARCHAR(30),
	@Email VARCHAR(30),
	@Customer_TypeId VARCHAR(30),
	@Address VARCHAR(30),
	@Address_TypeId VARCHAR(30)
	
AS
BEGIN
		
		INSERT INTO Customer (Name, Email,Customer_TypeId)
        VALUES (@Name, @Email, @Customer_TypeId);


		DECLARE @LastInsertedID INT;
	    SET @LastInsertedID = SCOPE_IDENTITY();

		INSERT INTO Customer_Address (CustomerID, Address,Address_TypeId)
        VALUES (@LastInsertedID, @Address, @Address_TypeId);


	SELECT C.Name, C.Email, C.Customer_TypeId, CA.Address, CA.Address_TypeId
    FROM Customer AS C
    INNER JOIN Customer_Address AS CA ON C.ID = CA.CustomerID
    WHERE C.ID = @LastInsertedID;


EXEC  InsertCustomerWithAddressNew 'Rockey Hassan','rockeyhasssan90@gmail.com','2','Mumbai', '1';

SELECT * FROM Customer

SELECT * FROM Customer_Address

SELECT * FROM Customer_Type

CREATE  PROCEDURE InsertCustomerWithCustomer_TypeNew
    @Name VARCHAR(30),
	@Email VARCHAR(30),
	@Customer_TypeId VARCHAR(30),
	@Customer_Type VARCHAR(30)

AS
		INSERT INTO Customer (Name, Email,Customer_TypeId)
        VALUES (@Name, @Email, @Customer_TypeId);

		DECLARE @LastInsertedID INT;
	    SET @LastInsertedID = SCOPE_IDENTITY();

		INSERT INTO Customer_Type (Customer_Type)
		VALUES (@LastInsertedID);
		
		SELECT C.Name, C.Email, C.Customer_TypeId, CT.Customer_Type
		FROM Customer AS C
		INNER JOIN Customer_Type AS CT ON C.ID = CT.Id
		WHERE C.Customer_TypeId =@LastInsertedID;

EXEC InsertCustomerWithCustomer_TypeNew 'Ravi Kumar','ravikumar78@gmail.com','1','1';

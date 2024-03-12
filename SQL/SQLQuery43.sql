SELECT * FROM Employee
WHERE Salary > ( SELECT AVG (Salary) FROM Employee);

SELECT * FROM Customer

SELECT * FROM Customer_Address

UPDATE Customer
SET Email = 'akamal186@gmail.com'
WHERE Id = 17;

CREATE PROCEDURE UPDATE InsertCustomerWithAddressNew
	@Email VARCHAR(30)
AS


BEGIN
	SET NOCOUNT ON;
	UPDATE CustomerWithAddressNew
		SET Email = @Email

		WHERE Id = @sId

END

EXEC UPDATE CustomerWithAddressNew 10,''ehtashamulhaque19@gmail.com''

CREATE  PROCEDURE UpdateCustomerWithAddressNew  
	   @Email VARCHAR (30)

AS  

	  UPDATE Email 
	  SET Email='ehtashamulhaque01@gmail.com'
	  WHERE Id =7
	END

EXEC UpdateCustomerWithAddressNew 7;

UPDATE CustomerWithAddressNew
	Email = @Email
WHERE Id =@Id


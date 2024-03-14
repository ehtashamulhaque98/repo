ALTER PROCEDURE InsertCustomerWithAddressNew
	    @Name              VARCHAR(30),
	    @Email             VARCHAR(30),
	    @Customer_TypeId   VARCHAR(30),
	    @Address           VARCHAR(30),
	    @Address_TypeId    VARCHAR(30)

AS
	BEGIN  
		DECLARE @CustomerId INT
		DECLARE @Count INT
		
		SELECT @Count = COUNT (Email)
		FROM Customer
		WHERE Email = @Email

		IF (@Count = 0)
		    BEGIN

				
		        INSERT INTO Customer (Name, Email,Customer_TypeId)
                             VALUES (@Name, @Email, @Customer_TypeId)

	            SET @CustomerId = SCOPE_IDENTITY();

    	        INSERT INTO Customer_Address (CustomerID, Address, Address_TypeId)
                                      VALUES (@CustomerId, @Address, @Address_TypeId)
		

		        SELECT Customer.ID, Customer.Name, Customer.Customer_TypeId, Customer_Address.Address, Customer_Address.Address_TypeId
                FROM Customer 
                INNER JOIN Customer_Address ON Customer.ID = Customer_Address.CustomerID
                WHERE Customer.ID = @CustomerId; 

     	  END

	  ELSE
          
		  BEGIN
			   SELECT @CustomerId = Id
			   FROM Customer
			   WHERE Email = @Email;

			   	UPDATE Customer_Address
				SET Address = @Address
				WHERE Id = @CustomerId AND Address_TypeId = @Address_TypeId;

				SELECT Customer.ID, Customer.Name, Customer.Customer_TypeId, Customer_Address.Address, Customer_Address.Address_TypeId
				FROM Customer 
				INNER JOIN Customer_Address ON Customer.ID = Customer_Address.CustomerId
				WHERE Customer.ID = @CustomerId;
			END
		END
                


EXEC  InsertCustomerWithAddressNew 'Rockey Hassan','rockey01@gmail.com','2','Mumbai', '1';


EXEC InsertCustomerWithAddressNew 'Ehtashamul Haque', 'ehtashamulhaque98@gmail.com', '4', 'Patna', '2';

CREATE TABLE Customer (
	Id INT IDENTITY (1,1),
	Name VARCHAR(50),
	Address VARCHAR(50),
	Email VARCHAR(50)
);

SELECT * FROM Customer

INSERT INTO Customer (Name,Address,Email) VALUES ('Ehtashamul Haque','Bhairopur','ehtashamulhaque98@gmail.com');
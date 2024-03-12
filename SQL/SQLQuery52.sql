CREATE TABLE School (
   Id INT IDENTITY(1,1) PRIMARY KEY,
   Name VARCHAR(30),
   RollNo INT,
   Section VARCHAR(30),
   Address VARCHAR(30),
   PhoneNo DECIMAL
);

SELECT * FROM School

INSERT INTO School (Name,RollNo,Section,Address,PhoneNO) VALUES ('Nada Fatma','1','B','Hajipur','9939854821');

SELECT * FROM School
WHERE RollNo='1';

UPDATE School
SET Section ='A'
WHERE Id =3;

DELETE FROM School WHERE Id=2;

SELECT TOP 1 * FROM School;



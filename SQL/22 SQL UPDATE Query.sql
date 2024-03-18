

CREATE TABLE Department (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
);

SELECT * FROM Department

INSERT INTO Department (Name) VALUES ('Accounting'); 

UPDATE Department
SET Name ='QA'
WHERE Id=4;
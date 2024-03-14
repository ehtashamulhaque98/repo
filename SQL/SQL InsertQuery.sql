Select * From tblGender
Select * From tblPerson

Insert into tblPerson (ID, Gender, Name, Email, City, AGE ) Values (10, 'F','cdaa','g@s.com', 'Bhairopur', '20') 

Insert into tblGender (ID, Gender) Values (2,'M')

Use [Sample]
Go

Create Table tblPerson
(
ID int NOT NULL Primary Key,
Name nVarchar(100) NOT NULL
Email nVarchar(50) NOT NULL
Gender nChar(10)
)


Add tblPerson Row
(
Name nVarchar(100) NOT NULL
Email nVarchar(100) NOT NULL
)

Alter TABLE tblPerson

ADD Name  nVarchar(100);

Alter TABLE tblPerson

ADD Email nVarchar(100);

ALTER TABLE tblPerson
ADD CONSTRAINT DF_tbiPerson_GenderID
DEFAULT 3 FOR GENDERID

ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Hajipur' For City;

ALTER TABLE tblPerson

ADD City Varchar(255) DEFAULT 'Hajipur '

ALTER TABLE tblPerson
ADD AGE CHAR(100);

 
USE [Sample]
GO

CREATE Table tblSahu
(
ID int NOT NULL Primary Key,
Name Char(50),
Email Varchar(50),
City nChar(50),
Address nVarchar(50),
)

Select * from tblSahu

Delete from tblSahu where ID = 1

Insert into tblSahu (ID, Name, Email, City, Address ) Values (10, 'Ehtram' ,'U+0000', 'Patna', 'Hajipur')


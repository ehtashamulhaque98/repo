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

Insert into tblSahu (ID, Name, Email, City, Address ) Values (11, '1','	汉字', '100', 'Hajipur') 

Insert into tblSahu (ID, Name, Email, City, Address ) Values (14, N'汉字',N'	汉字', N'汉字', N'	漢字')

Select * from tblSahu Where City  ='Bhairopur' OR City = 'Patna'

Select * from tblSahu where Not City =  'Patna'

Select * from tblSahu Where City  <> 'Patna'

Select * from tblSahu Where City  != 'Patna' AND Address != 'Hajipur'

Select * from tblSahu Where Email  != 'eht$@h.com' AND Address != 'Hajipur' AND City != 'Patna'

Select * from tblSahu Where City  ='Hajipur'

Select * from tblSahu Where Name  ='Ehtram'

Select * from tblSahu Where Name  ='Sahu@'

Select * from tblSahu Where Address  ='Bhairopur'

Select * from tblSahu Where Address  ='Hajipur'

Select * from tblSahu Where Address  ='200'

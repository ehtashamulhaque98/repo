Select * from tblGender
Select * from tblPerson 

Insert into tblPerson (ID, Gender, Name, Email, City, AGE ) Values (6, 'F','Naga','na@ga.com', 'Jadhua', '30') 

Delete from tblPerson where Name = 'Haa'

Select DISTINCT City from tblPerson

Select DISTINCT Name, City from tblPerson

Select * from tblPerson where City = 'Bhairopur'

Select * from tblPerson where City <> 'Bhairopur'

Select * from tblPerson where AGE IN  (20)

Select * from tblPerson where AGE BETWEEN 20 AND 23

Select * from tblPerson where City LIKE 'B%'

Select * from tblPerson where Name  LIKE '[se]%'

Select * from tblPerson Where (City = 'Jadhua' Or City = 'Patna') AND AGE > 25 

Select * from tblPerson order by Name 

Select top 4  * from tblPerson

Select top 2  Name, Age from tblPerson

Select * from tblPerson order by Age DESC

Select top 1 * from tblPerson order by Age ASC 






SELECT * FROM Department

SELECT * FROM Employee

ALTER TABLE Department
ADD PRIMARY KEY (ID);

ALTER TABLE Department
DROP CONSTRAINT PK_Department;

ALTER TABLE Department
ADD CONSTRAINT PK_Department PRIMARY KEY (Id);




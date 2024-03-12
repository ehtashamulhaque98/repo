SELECT * FROM Employee

INSERT INTO Employee (Name, Gender, DepartmentId,DateOfBirth)
VALUES ('Ehtashamul', 'Male', '1', '2000-07-23');

DELETE FROM Employee
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Employee
    GROUP BY Name
);


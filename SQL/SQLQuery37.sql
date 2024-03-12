SELECT * FROM Employee

SELECT * FROM Student

SELECT * FROM Address

SELECT * FROM Customer


SELECT * FROM Employee
WHERE Name LIKE 'E%';

SELECT * FROM Employee
WHERE Name LIKE 'A%';

SELECT * FROM Student
WHERE Name LIKE 'E%';


SELECT * FROM Student
WHERE Name LIKE 'N%';

SELECT * FROM Student
WHERE Address LIKE 'B_air____';

SELECT * FROM Student
WHERE Address LIKE 'H_wh__';

SELECT * FROM Address
WHERE Address LIKE 'W%';

SELECT * FROM Student
WHERE Address LIKE 'B%';


SELECT * FROM Address
WHERE Address LIKE '%W%';

SELECT * FROM Student
WHERE Address LIKE '%B%';


SELECT * FROM Address
WHERE Address LIKE 'Se%';


SELECT * FROM Student
WHERE Address LIKE 'Bh%';

SELECT * FROM Employee
WHERE Name LIKE 'E%' OR Name  LIKE 'A%';

SELECT * FROM Address
WHERE Address LIKE 'W%' OR Address  LIKE 'Se%';

SELECT * FROM Employee
WHERE Name LIKE '%E';

SELECT * FROM Address
WHERE Address LIKE '%P';

SELECT * FROM Student
WHERE Name LIKE 'E%E';

SELECT * FROM Student
WHERE Name LIKE 'F%l';

SELECT * FROM Employee
WHERE Name LIKE 'F%D';

SELECT * FROM Employee
WHERE Name LIKE '%EH%';

SELECT * FROM Address
WHERE Address LIKE '%WA%';

SELECT * FROM Student
WHERE Name LIKE '%Na%';

SELECT * FROM Address
WHERE Address LIKE '%WA%';

SELECT * FROM Employee
WHERE Name LIKE 'E___%';

SELECT * FROM Employee
WHERE Name LIKE 'T___%';

SELECT * FROM Employee
WHERE Name LIKE '_A%';

SELECT * FROM Student
WHERE Name LIKE '_A%';

SELECT * FROM Address
WHERE Address LIKE '_E%';

SELECT * FROM Student
WHERE Name LIKE 'Nasir';

// Wildcard

SELECT * FROM Student
WHERE Name LIKE 'E%';

SELECT * FROM Customer
WHERE Name LIKE 'E%';

SELECT * FROM Employee
WHERE Name LIKE '%ue';

SELECT * FROM Customer
WHERE Name LIKE '%Zis%';

SELECT * FROM Student
WHERE Name LIKE '_aisal';

SELECT * FROM Student
WHERE Name LIKE 'F___al';

SELECT * FROM Employee
WHERE Name LIKE '[Eae]%';

SELECT * FROM Student
WHERE Name LIKE '_a%';

SELECT * FROM Employee
WHERE Name LIKE 'E%E';

SELECT * FROM Student
WHERE Name LIKE 'F____l%';

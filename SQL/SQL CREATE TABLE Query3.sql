CREATE TABLE Student (
	Id INT IDENTITY (1,1) PRIMARY KEY,
	Name VARCHAR(50),
	PhoneNo VARCHAR(15),
	Email VARCHAR(50),
	Address VARCHAR(50),
	CourseId INT
);

SELECT * FROM Student

INSERT INTO Student (Name,PhoneNo,Email,Address,CourseId) VALUES ('Ehtashamul Haque','7782862394','ehtashamulhaque98@gmail.com','Bhairopur','1');

ALTER TABLE Student
ADD FOREIGN KEY (CourseId) REFERENCES Course(Id);


CREATE TABLE Course (
	Id INT IDENTITY (1,1) PRIMARY KEY,
	Name VARCHAR(50),
	Fee DECIMAL(10,2),
	Duration INT
);

INSERT INTO Course(Name,Fee,Duration) VALUES ('CSE','400000','48');

CREATE TABLE Enrollment (
	ID INT IDENTITY (1,1) PRIMARY KEY,
	StudentId INT,
	CourseId INT;
	EnrollmentDate DATE

);

INSERT INTO Enrollment (StudentId,CoursrId,EnrollmentDate) VALUES (1,1,'2023-10--4');

ALTER TABLE Enrollment
ADD FOREIGN KEY (StudentId) REFERENCES Student(Id);

ALTER TABLE Enrollment
ADD FOREIGN KEY (CourseId) REFERENCES Course(Id);

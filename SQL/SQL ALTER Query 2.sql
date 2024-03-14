CREATE TABLE Student (
	Id INT IDENTITY (1,1) PRIMARY KEY,
	Name VARCHAR(50),
	PhoneNo VARCHAR(15),
	Email VARCHAR(50),
	Address VARCHAR(50),
	CourseId INT
);

SELECT * FROM Student

INSERT INTO Student (Name,PhoneNo,Email,Address,CourseId) VALUES ('Ehtashamul Haque','99394534590','ehtashamulhaque98@gmail.com','Howhra','4');


ALTER TABLE Student
ADD FOREIGN KEY (CourseId) REFERENCES Course(Id);


CREATE TABLE Course (
	Id INT IDENTITY (1,1) PRIMARY KEY,
	Name VARCHAR(50),
	Fee DECIMAL(10,2),
	Duration INT
);

SELECT * FROM Course

INSERT INTO Course(Name,Fee,Duration) VALUES ('EE','36000','48');



CREATE TABLE Enrollment (
	ID INT IDENTITY (1,1) PRIMARY KEY,
	StudentId INT,
	CourseId INT,
	EnrollmentDate DATE

);

INSERT INTO Enrollment (StudentId,CourseId,EnrollmentDate) VALUES (4,4,'2023-09-30');

SELECT * FROM Enrollment

ALTER TABLE Enrollment
ADD FOREIGN KEY (StudentId) REFERENCES Student(Id);

ALTER TABLE Enrollment
ADD FOREIGN KEY (CourseId) REFERENCES Course(Id);

ALTER TABLE Enrollment
ADD CONSTRAINT FK_EnrollmentCourse
FOREIGN KEY (CourseId) REFERENCES Course(Id);

ALTER TABLE Enrollment
DROP CONSTRAINT FK_EnrollmentCourse;

SELECT * FROM Student

SELECT * FROM Course

SELECT * FROM Enrollment

ALTER TABLE Student
ADD CONSTRAINT UC_Student_Email UNIQUE (,Email);

ALTER TABLE Student
DROP CONSTRAINT UC_Student_Name_Email;

ALTER TABLE Student
ADD CONSTRAINT UC_Student_Name_Email_PhoneNo UNIQUE (Name, Email,PhoneNo);


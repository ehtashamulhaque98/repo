USE[Sample]
GO

CREATE TABLE Departments (
    Department_id INT PRIMARY KEY,
    Department_name VARCHAR(50)
);

Select * from Departments

INSERT INTO departments (department_id, department_name) VALUES (3, 'Software Developer');


CREATE TABLE Employeesoffic (
    Employee_id INT PRIMARY KEY,
    Employee_name VARCHAR(100),
    Department_id INT,
    Other_columns VARCHAR(255),
    FOREIGN KEY (Department_id) REFERENCES Departments(Department_id)
);

Select * from Employeesoffic

INSERT INTO Employeesoffic (employee_id, employee_name, department_id, other_columns) VALUES (1, 'John Doe', 1, 'Position: HR Manager');

INSERT INTO Employeesoffic (employee_id, employee_name, department_id, other_columns) VALUES (4, ' Max Well ', 2, 'Position: Computer Science');

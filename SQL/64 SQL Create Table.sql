select * from Employeess

select * from Employees

select * from Departments

select * from Services

select * from Clients

select * from Projects

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);

INSERT INTO Departments (DepartmentName)
VALUES 
('Human Resources'),
('Finance'),
('IT Department'),
('Marketing'),
('Sales');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15),
    Gender NVARCHAR(10),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (Name, Email, PhoneNumber, Gender, DepartmentID, HireDate, Salary)
VALUES 
('Ehtashamul Haque', 'ehtashamulhaque@gmail.com', '7782862394', 'Male', 3, '01/08/2023', 65000.00),
('Ehtramul Haque', 'ehtaramulhaque05@gmail.com', '7257826211', 'Male', 2, '01/11/2023', 60000.00),
('Nada Fatma', 'nadafatma11@gmail.com', '9939854821', 'Female', 1, '01/08/2024', 55000.00),
('Fiza Alam', 'alamfiza@gmail.com', '7780862365', 'Female', 4, '01/08/2024', 35000.00),
('Ariz Anwer', 'arizamwer@gmail.com', '7070284821', 'Male', 5, '12/12/2023', 30000.00),
('Faizan', 'faizan@gmail.com', '9430258650', 'Male', 3, '01/09/2023', 50000.00),
('Tashim Ali', 'tashimali23@gmail.com', '9006230123', 'Male', 2, '01/08/2024', 45000.00),
('Nabiha Fatma', 'nabihafatma@gmail.com', '9936541236', 'Female', 1, '01/08/2024', 35000.00),
('Adil', 'adil@gmail.com', '7564561236', 'Male', 4, '01/09/2024', 40000.00),
('Khalid Raza', 'khalidraza45@gmail.com', '9936547896', 'Male', 5, '01/06/2024', 45000.00);


CREATE TABLE Services (
    ServiceID INT PRIMARY KEY IDENTITY(1,1),
    ServiceName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    Price DECIMAL(10, 2)
);

INSERT INTO Services (ServiceName, Description, Price)
VALUES 
('Web Development', 'Building responsive and dynamic websites', 15000.00),
('API Development', 'Creating and managing RESTful APIs', 10000.00),
('Mobile App Development', 'Developing cross-platform mobile apps', 20000.00),
('SEO Optimization', 'Improving website visibility on search engines', 50000.00),
('Cloud Hosting', 'Providing secure cloud hosting solutions', 80000.00);



CREATE TABLE Clients (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15),
    Address NVARCHAR(200),
    City NVARCHAR(50),
    Country NVARCHAR(50)
);

INSERT INTO Clients (ClientName, Email, PhoneNumber, Address, City, Country)
VALUES 
('John Doe', 'johndoe@.com', '1234567890', '123 Main St', 'New York', 'USA'),
('Alice Johnson', 'alicejohnson@.com', '0987654321', '456 Oak St', 'Los Angeles', 'USA'),
('Bob Smith', 'bobsmith@.com', '1122334455', '789 Pine St', 'Chicago', 'USA'),
('Charlie Brown', 'charliebrown@.com', '9988776655', '101 Maple Ave', 'Boston', 'USA'),
('Emma Watson', 'emmawatson@.com', '5566778899', '202 Cedar St', 'Seattle', 'USA');


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ProjectName NVARCHAR(100),
    ClientID INT,
    ServiceID INT,
    AssignedEmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    Status NVARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (AssignedEmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Projects (ProjectName, ClientID, ServiceID, AssignedEmployeeID, StartDate, EndDate, Status)
VALUES 
('Mobile App Development', 2, 3, 5, '2024-09-15', '2025-01-15', 'In Progress'),
('API Integration', 3, 2, 10, '2024-11-01', '2024-12-15', 'Pending'),
('SEO Optimization', 1, 4, 5, '2024-08-01', '2024-11-30', 'Completed'),
('Cloud Hosting Setup', 5, 5, 10, '2024-10-20', '2025-01-31', 'In Progress');












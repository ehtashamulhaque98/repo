CREATE TABLE AxisBank (
	BankId INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(30),
	Position VARCHAR(30),
	MobileNo INT,
	Address VARCHAR(50)
);

SELECT * FROM AxisBank


SET IDENTITY_INSERT AxisBank ON;

INSERT INTO AxisBank (BankId,Name,Position,MobileNo,Address) VALUES (1,'Ehtashamul Haque','Manager','7782862394','Bhairopur');

ALTER TABLE AxisBank
ALTER COLUMN MobileNo BIGINT;

DELETE FROM AxisBank WHERE Position ='Manager';

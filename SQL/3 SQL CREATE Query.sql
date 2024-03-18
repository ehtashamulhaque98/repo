CREATE TABLE Logs (
    DateTime DATETIME,
    Message VARCHAR(255)
);

SELECT * FROM Logs


INSERT INTO Logs ( DateTime, Message) 
		   VALUES(GETDATE(), 'This is a Message For You ');

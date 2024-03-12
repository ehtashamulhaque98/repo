CREATE TABLE Cricket (
	PCODE INT IDENTITY (1,1) PRIMARY KEY ,
	PLAYERNAME VARCHAR (255),
	AGE INT,
	MATCHPLAYED INT,
	RUN INT,
	WICKET INT,
	COUNTRY VARCHAR (255)
);

SELECT * FROM Cricket

INSERT INTO Cricket (PLAYERNAME,AGE,MATCHPLAYED,RUN,WICKET,COUNTRY) VALUES ('Ishan Kishan','28','50','2000','0','India');
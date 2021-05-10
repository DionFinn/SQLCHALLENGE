USE sqlchallenge
--DionFinnerty 103545669--

CREATE TABLE Tour5669 (
TourName    NVARCHAR(100)
,Descriptionn   NVARCHAR(500)
PRIMARY KEY     (TourName) 
)

CREATE TABLE Event5669 (
TourName    NVARCHAR(100)
,EventYear  INT
,EventMonth     NVARCHAR (3)
,EventDay   INT
,EventFee   MONEY 
PRIMARY KEY     (EventYear)
)

CREATE TABLE Client5669 (
ClientId    INT 
,Surname    NVARCHAR(100) 
,GivenName  NVARCHAR(100)
,Gender     NVARCHAR(1)
PRIMARY KEY     (ClientId)
)

CREATE TABLE Booking5669 (
ClientId    INT
,TourName   NVARCHAR(100)
,EventDay   INT
,EventYear  INT
,DateBooked     DATE
,Payment    MONEY
PRIMARY KEY     (DateBooked)
)


INSERT INTO Tour5669 (TourName, Descriptionn) VALUES ('North','Tour of wineries and outlets of the Bedigo and Castlemaine region')
INSERT INTO Tour5669 (TourName, Descriptionn) VALUES ('South','Tour of wineries and outlets of Mornington Penisula')
INSERT INTO Tour5669 (TourName, Descriptionn) VALUES ('west', 'Tour of wineries and outlets of the Geelong and Otways region')

INSERT INTO Event5669 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('North','Jan',9,2016,200)
INSERT INTO Event5669 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('North','Feb',13,2016,225)
INSERT INTO Event5669 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('South','Jan',9,2016,200)
INSERT INTO Event5669 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('South','Jan',16,2016,200)
INSERT INTO Event5669 (TourName, EventMonth, EventDay, EventYear, EventFee) VALUES ('West' ,'Jan',29, 2016,225)

INSERT INTO Client5669 (ClientId, Surname, GivenName, Gender) VALUES (1,'Price','Taylor','M')
INSERT INTO Client5669 (ClientId, Surname, GivenName, Gender) VALUES (2,'Gamble','Ellyse','F')
INSERT INTO Client5669 (ClientId, Surname, GivenName, Gender) VALUES (3,'Tan','Tilly','F')

INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (1, 'North', 'Jan',9, 2016, 200, 10/12/15)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (2,	'North', 'Jan',9, 2016,	200, 16/12/15)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (1,	'North', 'Feb',13, 2016, 225, 8/1/16)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (2,	'North', 'Feb',13, 2016, 125, 14/1/16)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (3, 'North', 'Feb',13, 2016, 225, 3/2/16)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (1,	'South', 'Jan',9,  2016, 200, 10/12/15)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (2,	'South', 'Jan',16, 2016, 200, 18/12/15)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (3,	'South', 'Jan',16, 2016, 200, 9/1/16)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (2, 'West',	'Jan',29,  2016, 225, 17/12/15)
INSERT INTO Booking5669 (ClientId, TourName, TourName, EventDay, EventYear, Payment, DateBooked) VALUES (3,	'West',	'Jan',29,  2016, 200, 18/12/15)

SELECT TourName
FROM Tour5669
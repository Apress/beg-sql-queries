

CREATE TABLE Type(
	Type Char(20) Primary Key,
	Fee smallint NULL)

CREATE TABLE Member(
	MemberID smallint Primary Key,
	LastName Char(20),
	FirstName Char(20),
	MemberType Char(20) Foreign Key References [Type],
	Phone Char(20),
	Handicap smallint,
	JoinDate date,
	Coach smallint,
	Team Char(20),
	Gender Char(1))

CREATE TABLE Tournament(
	TourID smallint Primary Key,
	TourName Char(20) NULL,
	TourType Char(20) NULL)

CREATE TABLE Entry(
	MemberID smallint Foreign Key References Member,
	TourID smallint Foreign Key References Tournament,
	Year smallint,
Primary Key (MemberID, TourID, Year))

CREATE TABLE Team(
	TeamName Char(20) Primary Key,
	PracticeNight Char(20),
	Manager smallint Foreign Key References Member)


Alter TABLE Member 
ADD CONSTRAINT FK_Coach FOREIGN KEY (Coach) References Member

Alter TABLE Member 
ADD CONSTRAINT FK_Team FOREIGN KEY (Team) References Team





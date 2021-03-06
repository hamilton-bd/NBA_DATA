CREATE TABLE Stats (
	StatsID INT PRIMARY KEY AUTO_INCREMENT,
	Games VARCHAR(25),
	Minutes VARCHAR(25),
	PER VARCHAR(25),
	TruePer VARCHAR(25),
	ThreePer VARCHAR(25),
	FTPer VARCHAR(25),
	ORB VARCHAR(25),
	DRB VARCHAR(25),
	TRB VARCHAR(25),
	AST VARCHAR(25),
	STL VARCHAR(25),
	BLK VARCHAR(25),
	TOV VARCHAR(25),
	USG VARCHAR(25),
	OWS VARCHAR(25),
	DWS VARCHAR(25),
	WS VARCHAR(25),
	OBPM VARCHAR(25),
	DBPM VARCHAR(25),
	BPM VARCHAR(25),
	VORP VARCHAR(25),
	ShotPer VARCHAR(25)
);

CREATE TABLE Team (
    TeamID INT PRIMARY KEY AUTO_INCREMENT,
    TeamName VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Player (
	PlayerID INT PRIMARY KEY AUTO_INCREMENT,
	PlayerName VARCHAR(255),
	Year VARCHAR(25),
	Age VARCHAR(25),
	YearsExp VARCHAR(25),
	Height VARCHAR(25),
	Weight VARCHAR(25),
	Salary VARCHAR(255),
	StatsID INT NOT NULL,
	TeamID INT NOT NULL,
	UNIQUE(PlayerName, Year),
	CHECK(Year > 1900),
	FOREIGN KEY (StatsID) REFERENCES Stats (StatsID) ON DELETE RESTRICT,
	FOREIGN KEY (TeamID) REFERENCES Team (TeamID) ON DELETE RESTRICT
);

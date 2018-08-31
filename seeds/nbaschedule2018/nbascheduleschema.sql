CREATE TABLE april2019 (
    gameid INT NOT NULL AUTO_INCREMENT,
    dateGame varchar(255),
    timeGame varchar(255),
    visitorTeam varchar(255),
    visitorPts INT,
    homeTeam varchar(255),
    homePts INT,
    nullspace1 varchar(255),
    nullspace2 varchar(255),
    attendance INT,
    notes varchar(255),
    PRIMARY KEY (gameid)
)
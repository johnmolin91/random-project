LOAD DATA LOCAL INFILE 
    'C:/Users/johnm/OneDrive/Documents/FantasyEdge/random-project/seeds/teamstats/nba2017teamstats.csv'
	INTO TABLE nba2017advancedteamstats
    FIELDS terminated by ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    (dateGame,timeGame,visitorTeam,visitorPts,homeTeam,homePts,nullspace1,nullspace2,attendance,notes)
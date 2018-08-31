LOAD DATA LOCAL INFILE 
    'C:/Users/johnm/OneDrive/Documents/FantasyEdge/random-project/seeds/teamstats/nba2017teamstats.csv'
	INTO TABLE nba2017advanedteamstats
    FIELDS terminated by ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES
    (rk,team,age,wins,losses,pythagWins,pythaglosses,margin,sos,srates,ortg,drtg,pace,ftr,threepar,trueshoot,oefgp,otovp,orbp,oftpfga,defgp,dtovp,drbp,dftpfga,arena,attendance,attpg)
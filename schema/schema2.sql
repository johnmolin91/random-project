DROP DATABASE IF EXISTS nbaplayerstats18adv;
CREATE DATABASE nbaplayerstats18adv;

USE nbaplayerstats18adv;

CREATE TABLE playersadvanced(
  Rk INT UNIQUE NOT NULL,
  Player VARCHAR(99) NOT NULL,
  Pos VARCHAR(5) NOT NULL,
  Age INT NOT NULL,
  Tm VARCHAR(5) NOT NULL,
  G INT NOT NULL,
  MP DECIMAL(10,2) NOT NULL,
  PER DECIMAL(10,2) NOT NULL,
  TSP DECIMAL(10,3) NOT NULL,
  3PAR DECIMAL(10,3) NOT NULL,
  FTR DECIMAL(10,3) NOT NULL,
  ORBP DECIMAL(10,2) NOT NULL,
  DRBP DECIMAL(10,2) NOT NULL,
  TRBP DECIMAL(10,2) NOT NULL,
  ASTP DECIMAL(10,2) NOT NULL,
  STLP DECIMAL(10,2) NOT NULL,
  BLKP DECIMAL(10,2) NOT NULL,
  TOVP DECIMAL(10,2) NOT NULL,
  USGP DECIMAL(10,2) NOT NULL,
  OWS DECIMAL(10,2) NOT NULL,
  DWS DECIMAL(10,2) NOT NULL,
  WS DECIMAL(10,2) NOT NULL,
  WS48 DECIMAL(10,3) NOT NULL,
  OBPM DECIMAL(10,2) NOT NULL,
  DBPM DECIMAL(10,2) NOT NULL,
  BPM DECIMAL(10,2) NOT NULL,
  VORP DECIMAL(10,2) NOT NULL,
  primary key (Rk)
);

SELECT * FROM playersadvanced;
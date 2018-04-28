DROP DATABASE IF EXISTS nbaplayerstats;
CREATE DATABASE nbaplayerstats;

USE nbaplayerstats;

CREATE TABLE players(
  player_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  primary key(item_id)
);

SELECT * FROM players;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES
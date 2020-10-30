/* Parsen der csv-datei / DB + Tab anlegen */

system clear;

-- DB anlegen, falls diese noch nicht Existiert
CREATE DATABASE IF NOT EXISTS stocks;
#SHOW DATABASES;

-- use focus
USE stocks;

-- Tab lรถschen, falls existent
DROP TABLE IF EXISTS ccc_list;
#SHOW TABLES;

-- Tab anlegen, falls diese noch nicht Existiert
CREATE TABLE IF NOT EXISTS stocks.ccc_list
(
    id INT NOT NULL PRIMARY KEY,
    c_name VARCHAR(100) NOT NULL,   
    ticker VARCHAR(10) NOT NULL,
    sector VARCHAR(100) NOT NULL, 
    industry VARCHAR(100) NOT NULL, 
    no_years INT NOT NULL,
    ranking INT NOT NULL,
    price DECIMAL (6,2) NOT NULL,
    yield DECIMAL (6,4) NOT NULL,
    dividend DECIMAL (6,4) NOT NULL,
    payouts INT NOT NULL,
    annualized DECIMAL (4,2) NOT NULL
);

-- Tab Schema anzeigen 
DESC ccc_list;

/* Parsen und Einlesen der Daten */
LOAD DATA LOCAL INFILE "05_SQL_SELECT_stocks /data/ccc_dez_2019.csv"
INTO TABLE ccc_list
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

SELECT * FROM stocks.ccc_list;






/* Queries Basic */

system clear;

/*
Felder abfragen 
Felder korrigieren
Ausgabe beschränken 
*/

-- Abfrage aller Spalten der Tab 
#SELECT * FROM stocks.ccc_list;

-- Abfrage aller Spalten der Tab
-- 10 Zeilen ab 0
#SELECT * FROM stocks.ccc_list LIMIT 0,10;

-- 5 Zeilen ab 1    0
#SELECT * FROM stocks.ccc_list LIMIT 10,5;

-- Abfrage eines Felds oder einer Feld-kombi(10 rows
/*
SELECT
industrie,ticker, c_name
FROM stocks.ccc_list
LIMIT 10;
*/

-- Abfrage eines Felds oder einer Feld-kombi m. Umbenennung (Alias)
/*
SELECT
ticker AS "Symbol",
c_name AS "Unternhemen",
price AS "Preis pro Aktie/$"
FROM stocks.ccc_list
LIMIT 10;
*/

-- Kobination aus mehreren Feldern in neues Feld 
-- hier Verknüpfung CONTACT() // String-Fkt.ALTER
SELECT 
ticker "SYM",
c_name "Company",
CONCAT(sector," | ",industry)"operations"
FROM stocks.ccc_list
LIMIT 10; 







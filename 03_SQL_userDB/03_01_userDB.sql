/* Tabelle mit user-Daten */

/* unbedingtes löschen */
/*DROP TABLE users;*/

system clear;

/* bedingtes löschen */
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    user_name VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL,
    familyName VARCHAR(20) NOT NULL
);

DESC users;

INSERT INTO users(user_name,firstName, familyName) VALUES("max","Max","Mütze");

SELECT * FROM users;

/*
INSERT INTO users(firstName, familyName) VALUES("max","Max","Mütze");
INSERT INTO users(firstName, familyName) VALUES("max","Max","Martinelli");

SELECT * FROM users;
*/

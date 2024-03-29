/* Tabelle mit user-Daten */

/* unbedingtes löschen */
/*DROP TABLE users;*/

use work;

system clear;

/* bedingtes löschen */
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id INT NOT NULL,
    user_name VARCHAR(20) NOT NULL PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    familyName VARCHAR(20) NOT NULL
);

#DESC users;

INSERT INTO users(id,user_name,firstName, familyName) VALUES(1,"max","Max","Mütze");
INSERT INTO users(id,user_name,firstName, familyName) VALUES(2,"max01","Max","Martinelli");
INSERT INTO users(id,user_name,firstName, familyName) VALUES(3,"max77","Max","Martinelli");

SELECT * FROM users;

ALTER TABLE users ADD plz INT NOT NULL DEFAULT 70376;
ALTER TABLE users ADD user_mail VARCHAR(20) NOT NULL DEFAULT "@host.de";
ALTER TABLE users ADD user_pw INT NOT NULL DEFAULT 12345;

SELECT * FROM users;

/*
INSERT INTO users(firstName, familyName) VALUES("max","Max","Mütze");
INSERT INTO users(firstName, familyName) VALUES("max","Max","Martinelli");

SELECT * FROM users;
*/

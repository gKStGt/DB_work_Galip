/* CRUD Update | Select | Delete */

system clear:

SELECT * FROM cats;

/* Eingrenzen durch WHERE */
#UPDATE cats SET name="Alonzo" WHERE id=2;
UPDATE cats SET name="Alonzo" WHERE fur_color="grey";

SELECT * FROM cats;
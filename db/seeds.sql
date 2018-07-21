## Populate the kiosk tbl
## RUN THESE TWO FIRST
USE cubex_db;
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('HUB');
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('HOWARD');
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('JARVIS');
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('MORSE');
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('LUNT');
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('LOYOLA');.
INSERT INTO books_db.kiosks (`kiosk`) VALUES ('GRANVILLE');

## Populate the genres table
INSERT INTO genres (`genre`) VALUES ('Arts & Photography');
INSERT INTO genres (`genre`) VALUES ('Biographies & Memoirs');
INSERT INTO genres (`genre`) VALUES ('Business & Money');
INSERT INTO genres (`genre`) VALUES ('Calendars');
INSERT INTO genres (`genre`) VALUES ('Childrens Books');
INSERT INTO genres (`genre`) VALUES ('Comics & Graphic Novels');
INSERT INTO genres (`genre`) VALUES ('Computers & Technology');
INSERT INTO genres (`genre`) VALUES ('Cookbooks');
INSERT INTO genres (`genre`) VALUES ('Hobbies & Home');
INSERT INTO genres (`genre`) VALUES ('Christian Books & Bibles');
INSERT INTO genres (`genre`) VALUES ('Engineering & Transportation');
INSERT INTO genres (`genre`) VALUES ('Health');
INSERT INTO genres (`genre`) VALUES ('History');
INSERT INTO genres (`genre`) VALUES ('Humor & Entertainment');
INSERT INTO genres (`genre`) VALUES ('Law  ');
INSERT INTO genres (`genre`) VALUES ('Literature & Fiction');
INSERT INTO genres (`genre`) VALUES ('Medical Books');
INSERT INTO genres (`genre`) VALUES ('Mystery, Thriller & Suspense');
INSERT INTO genres (`genre`) VALUES ('Parenting & Relationships');
INSERT INTO genres (`genre`) VALUES ('Politics & Social Sciences');
INSERT INTO genres (`genre`) VALUES ('Reference');
INSERT INTO genres (`genre`) VALUES ('Religion & Spirituality');
INSERT INTO genres (`genre`) VALUES ('Romance');
INSERT INTO genres (`genre`) VALUES ('Science & Math');
INSERT INTO genres (`genre`) VALUES ('Science Fiction & Fantasy');
INSERT INTO genres (`genre`) VALUES ('Self-Help');
INSERT INTO genres (`genre`) VALUES ('Sports & Outdoors');
INSERT INTO genres (`genre`) VALUES ('Teen & Young Adult   ');
INSERT INTO genres (`genre`) VALUES ('Test Preparation ');
INSERT INTO genres (`genre`) VALUES ('Travel');


## There is an offset with the big dataset and the GENRE ID. Table alteration is needed if your local 
## copy of MYSQL starts genre at 1. Run this AFTER RUNNING FIRST TWO PARAGRAPHS
## USE IMPORT WIZARD TO capture
UPDATE books_db.genres SET `id`='0' WHERE `id`='1';
UPDATE books_db.genres SET `id`='1' WHERE `id`='2';
UPDATE books_db.genres SET `id`='2' WHERE `id`='3';
UPDATE books_db.genres SET `id`='3' WHERE `id`='4';
UPDATE books_db.genres SET `id`='4' WHERE `id`='5';
UPDATE books_db.genres SET `id`='5' WHERE `id`='6';
UPDATE books_db.genres SET `id`='6' WHERE `id`='7';
UPDATE books_db.genres SET `id`='7' WHERE `id`='8';
UPDATE books_db.genres SET `id`='8' WHERE `id`='9';
UPDATE books_db.genres SET `id`='9' WHERE `id`='10';
UPDATE books_db.genres SET `id`='10' WHERE `id`='11';
UPDATE books_db.genres SET `id`='11' WHERE `id`='12';
UPDATE books_db.genres SET `id`='12' WHERE `id`='13';
UPDATE books_db.genres SET `id`='13' WHERE `id`='14';
UPDATE books_db.genres SET `id`='14' WHERE `id`='15';
UPDATE books_db.genres SET `id`='15' WHERE `id`='16';
UPDATE books_db.genres SET `id`='16' WHERE `id`='17';
UPDATE books_db.genres SET `id`='17' WHERE `id`='18';
UPDATE books_db.genres SET `id`='18' WHERE `id`='19';
UPDATE books_db.genres SET `id`='19' WHERE `id`='20';
UPDATE books_db.genres SET `id`='20' WHERE `id`='21';
UPDATE books_db.genres SET `id`='21' WHERE `id`='22';
UPDATE books_db.genres SET `id`='22' WHERE `id`='23';
UPDATE books_db.genres SET `id`='23' WHERE `id`='24';
UPDATE books_db.genres SET `id`='24' WHERE `id`='25';
UPDATE books_db.genres SET `id`='25' WHERE `id`='26';
UPDATE books_db.genres SET `id`='26' WHERE `id`='27';
UPDATE books_db.genres SET `id`='27' WHERE `id`='28';
UPDATE books_db.genres SET `id`='28' WHERE `id`='29';
UPDATE books_db.genres SET `id`='29' WHERE `id`='30';



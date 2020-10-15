CREATE DATABASE day3;
USE day3;
CREATE TABLE contoh_set( id TINYINT, hobi SET("Memancing", "Menulis", "Menggambar", "Bermain Game", "Touring"));
SHOW COLUMNS FROM contoh_set;
INSERT INTO contoh_set VALUE (1, "Touring");
SELECT * FROM contoh_set;
INSERT INTO contoh_set VALUE (2, "Touring,Bermain Game");

CREATE TABLE contoh_null (id TINYINT, a VARCHAR(15)NULL, b INT NULL);
SHOW COLUMNS FROM contoh_null;
INSERT INTO contoh_null VALUES (1, NULL, 12345),(2, "test", NULL);
SELECT * FROM contoh_null;

CREATE TABLE contoh_not_null (id TINYINT, a VARCHAR(10)NOT NULL, b INT NOT NULL);
SHOW COLUMNS FROM contoh_not_null;
INSERT INTO contoh_not_null VALUES (7, "Test", NULL),(8, NULL, 2244666);
SELECT * FROM contoh_not_null;

CREATE TABLE contoh_default (id TINYINT NOT NULL PRIMARY KEY, nilai_a INT DEFAULT 0);
SHOW COLUMNS FROM contoh_default;
INSERT INTO contoh_default VALUE (2);

CREATE TABLE on_update (id TINYINT PRIMARY KEY, ubah TIMESTAMP NOT NULL);
SHOW COLUMNS FROM on_update;
INSERT INTO on_update (id) VALUE (3);
SELECT * FROM on_update;

CREATE TABLE auto_inc (id TINYINT AUTO_INCREMENT PRIMARY KEY, nama VARCHAR(100)NOT NULL);
INSERT INTO auto_inc (nama) VALUES ("Adi"), ("Fauzi"), ("Kusmara");
SELECT * FROM auto_inc;

CREATE TABLE contoh_unik( id TINYINT PRIMARY KEY AUTO_INCREMENT, nama VARCHAR (100), email VARCHAR(100)UNIQUE);
INSERT INTO contoh_unik (nama, email) VALUE ("Fauzi", "adi6@gmail.com");
SELECT * FROM contoh_unik;
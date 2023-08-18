USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL ,
    release_date INT NOT NULL ,
    sales FLOAT NOT NULL ,
    genre VARCHAR(50) NOT NULL
);
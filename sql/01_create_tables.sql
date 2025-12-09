CREATE DATABASE IF NOT EXISTS moviedb;
USE moviedb;

CREATE TABLE Genre (
    genreid INT PRIMARY KEY,
    genre VARCHAR(30) NOT NULL
);

CREATE TABLE Movies (
    movieid INT PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    dir_first_name VARCHAR(32) NOT NULL,
    dir_last_name VARCHAR(32) NOT NULL,
    runtime TIME NOT NULL,
    rating VARCHAR(8) NOT NULL,
    rel_year YEAR NOT NULL
);

CREATE TABLE Genres (
    genresid INT PRIMARY KEY,
    movieid INT NOT NULL,
    genreid INT NOT NULL,
    FOREIGN KEY (movieid) REFERENCES Movies(movieid),
    FOREIGN KEY (genreid) REFERENCES Genre(genreid)
);

CREATE TABLE Score (
    scoreid INT PRIMARY KEY,
    movieid INT NOT NULL,
    score DECIMAL(3,1) NOT NULL,
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
);

CREATE TABLE Gross (
    grossid INT PRIMARY KEY,
    movieid INT NOT NULL,
    gross INT NOT NULL,
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
);

CREATE TABLE Distribution (
    distid INT PRIMARY KEY,
    movieid INT NOT NULL,
    distname VARCHAR(32) NOT NULL,
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
);
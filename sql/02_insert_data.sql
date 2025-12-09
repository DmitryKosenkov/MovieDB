USE moviedb;

INSERT INTO Genre VALUES
(1,'Action'),(2,'Adventure'),(3,'Comedy'),(4,'Drama'),
(5,'Family'),(6,'Fantasy'),(7,'Horror'),(8,'Mystery'),
(9,'Science Fiction'),(10,'Thriller'),(11,'Western');

INSERT INTO Movies VALUES
(1,'Avengers EndGame','Anthony','Russo','03:01:00','PG-13',2019),
(2,'Titanic','James','Cameron','03:15:00','PG-13',1997),
(3,'Barbie','Greta','Gerwig','01:54:00','PG-13',2023),
(4,'Frozen II','Jennifer','Lee','01:43:00','PG',2019),
(5,'Jurassic World','Colin','Trevorrow','02:04:00','PG-13',2015),
(6,'The Lion King','John','Favreau','01:59:00','PG',2019),
(7,'Harry Potter and the Deathly Hallows – Part 1','David','Yates','02:26:00','PG-13',2011),
(8,'Inception','Cristopher','Nolan','02:28:00','PG-13',2010),
(9,'Joker','Todd','Phillips','02:02:00','R',2019),
(10,'The Super Mario Bros. Movie','Aaron','Horvath','01:32:00','PG',2023),
(11,'Here Comes The Boom','Frank','Coraci','01:45:00','PG',2012),
(12,'The Godfather','Francis','Coppola','02:55:00','R',1972),
(13,'The Dark Knight','Cristopher','Nolan','02:32:00','PG-13',2008),
(14,'The Good, The Bad, and The Ugly','Sergio','Leone','02:58:00','R',1966),
(15,'Jurassic World: Dominion','Colin','Trevorrow','02:27:00','PG-13',2022),
(16,'The Lord of the Rings: The Return of the King','Peter','Jackson','03:21:00','PG-13',2003),
(17,'Pulp Fiction','Quentin','Tarantino','02:34:00','R',1994),
(18,'Wonder Woman','Patty','Jenkins','02:21:00','PG-13',2017),
(19,'Joy','David','Russel','02:04:00','PG-13',2015),
(20,'The Lego Movie','Phil','Lord','01:40:00','PG',2014),
(21,'Goodfellas','Martin','Scorsese','02:26:00','R',1990),
(22,'The Silence of the Lambs','Jonathan','Demme','01:58:00','R',1991),
(23,'Insidious','James','Wan','01:43:00','PG-13',2010),
(24,'Parasite','Boog Joon-ho','Ho','01:32:00','R',2019);


INSERT INTO Genres VALUES
(1,1,1),(2,1,9),(3,2,4),(4,3,3),(5,4,5),(6,5,1),(7,6,5),(8,7,6),(9,8,9),
(10,9,10),(11,10,5),(12,11,3),(13,12,4),(14,13,1),(15,14,11),(16,15,1),
(17,16,2),(18,17,4),(19,18,1),(20,19,3),(21,20,8),(22,21,4),(23,22,7),
(24,23,7),(25,24,10);

INSERT INTO Score VALUES
(1,1,6.4),(2,2,7.5),(3,3,7.7),(4,4,8.2),(5,5,5.8),
(6,6,7.7),(7,7,6.8),(8,8,6.2),(9,9,5.9),(10,10,5.8),
(11,11,7.3),(12,12,6.9),(13,13,6.4),(14,14,8.6),(15,15,7.6),
(16,16,7.5),(17,17,6.6),(18,18,6.2),(19,19,8.4),(20,20,6.1),
(21,21,7.6),(22,22,6.2),(23,23,7.2),(24,24,7.2);

INSERT INTO Gross VALUES
(1,1,3100000),(2,2,1400000),(3,3,1500000),(4,4,1600000),(5,5,1700000),
(6,6,1900000),(7,7,2100000),(8,8,2200000),(9,9,2400000),(10,10,2500000),
(11,11,2700000),(12,12,2000000),(13,13,3100000),(14,14,393000),
(15,15,537000),(16,16,873000),(17,17,955000);

INSERT INTO Distribution VALUES
(1,1,'Walt Disney Studios'),(2,2,'Paramount Pictures'),
(3,3,'Warner Bros.'),(4,4,'Walt Disney Studios'),
(5,5,'Universal Pictures'),(6,6,'Walt Disney Studios'),
(7,7,'Warner Bros.'),(8,8,'Warner Bros.'),(9,9,'Warner Bros.'),
(10,10,'Universal Pictures'),(11,11,'Columbia Pictures'),
(12,12,'Paramount Pictures'),(13,13,'Warner Bros.'),
(14,14,'United Artists'),(15,15,'Universal Pictures'),
(16,16,'New Line Cinema'),(17,17,'Miramax Films'),
(18,18,'Warner Bros.'),(19,19,'20th Century Fox'),
(20,20,'Warner Bros.'),(21,21,'Orion Pictures'),
(22,22,'Orion Pictures'),(23,23,'Sony Pictures Classics'),
(24,24,'CJ Entertainment');

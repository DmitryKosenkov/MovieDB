USE moviedb;

CREATE VIEW movie_summary AS
SELECT m.movieid, m.title, m.rating, s.score, g.gross, d.distname
FROM Movies m
JOIN Score s ON m.movieid = s.movieid
JOIN Gross g ON m.movieid = g.movieid
JOIN Distribution d ON m.movieid = d.movieid;

CREATE VIEW movie_genres AS
SELECT m.title, g.genre
FROM Movies m
JOIN Genres gr ON m.movieid = gr.movieid
JOIN Genre g ON gr.genreid = g.genreid;

-- SAMPLE QUERIES

SELECT m.title, g.genre, s.score, d.distname
FROM Movies m
JOIN Genres gr ON m.movieid = gr.movieid
JOIN Genre g ON gr.genreid = g.genreid
JOIN Score s ON m.movieid = s.movieid
JOIN Distribution d ON m.movieid = d.movieid
ORDER BY s.score DESC;

SELECT m.title, g.gross
FROM Movies m
JOIN Gross g ON m.movieid = g.movieid
WHERE g.gross > 2000000;

SELECT m.title,
       CONCAT(m.dir_first_name,' ',m.dir_last_name) AS director,
       m.rel_year,
       s.score
FROM Movies m
JOIN Score s ON m.movieid = s.movieid
WHERE YEAR(m.rel_year) > 2010;

SELECT g.genre, AVG(s.score) AS avg_score
FROM Genre g
JOIN Genres gr ON g.genreid = gr.genreid
JOIN Score s ON gr.movieid = s.movieid
GROUP BY g.genre
ORDER BY avg_score DESC;

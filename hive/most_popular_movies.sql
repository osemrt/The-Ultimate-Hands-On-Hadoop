REATE VIEW topMovieIDs AS
SELECT r.movie_id, count(r.user_id) as ratingCount
FROM rating r
GROUP BY r.movie_id
ORDER BY ratingCount DESC;

SELECT m.name, ratingCount
FROM topMovieIDs t
JOIN movie m ON m.id = t.movie_id;

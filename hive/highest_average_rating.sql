REATE VIEW IF NOT EXISTS avgRatings AS
SELECT r.movie_id, AVG(r.score) as avgRating, count(r.user_id) as ratingCount
FROM rating r
GROUP BY r.movie_id
ORDER BY avgRating DESC;

SELECT m.name, avgRating
FROM avgRatings t 
JOIN movie m ON t.movie_id = m.id
WHERE ratingCount > 10;

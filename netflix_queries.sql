-- Retrieve all data from the movies table
SELECT * FROM movies;

-- Top 10 Highest-Rated Movies or Series with More Than 1000 Votes

SELECT title, type, imdbaveragerating, imdbnumvotes
FROM movies
WHERE imdbnumvotes > 1000 
ORDER BY imdbaveragerating DESC, imdbnumvotes DESC
LIMIT 10;

-- Average IMDb Rating 

SELECT type, AVG(imdbaveragerating) AS average_rating
FROM movies
GROUP BY type
ORDER BY average_rating;

-- Average IMDb Rating by Release Year

SELECT releaseyear, AVG(imdbaveragerating) AS average_rating
FROM movies
GROUP BY releaseyear
ORDER BY releaseyear DESC;

-- Most Common Genres by Type
SELECT genres, COUNT(*) AS genre_count
FROM movies
GROUP BY type, genres
ORDER BY genre_count DESC;

-- Top 10 Genres with the Most Titles Rated Above 8

SELECT genres, COUNT(*) AS rating_count
FROM movies
WHERE imdbaveragerating > 8 
GROUP BY genres
ORDER BY rating_count DESC
LIMIT 10;

-- Average IMDb Rating by Genre for Titles Released in 2020 and Later

SELECT genres, AVG(imdbaveragerating) AS avg_rating
FROM movies
WHERE releaseYear >= 2020
GROUP BY genres
ORDER BY avg_rating DESC;

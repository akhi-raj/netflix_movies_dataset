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

-- movies that are available in the highest number of countries 

SELECT 
    title,
    type,
    releaseYear,
    imdbAverageRating,
    imdbNumVotes,
    availableCountries,
    LENGTH(availableCountries) - LENGTH(REPLACE(availableCountries, ',', '')) + 1 AS numCountries
FROM 
    your_table_name
ORDER BY 
    numCountries DESC
LIMIT 10;


-- Movies with high rating and Low Votes

SELECT title, releaseyear, imdbaveragerating, imdbnumvotes 
FROM movies
WHERE  imdbaveragerating > 8 AND imdbnumvotes < 50000;

-- Average IMDb Rating of All Movies: What is the average IMDb rating of all movies

SELECT 
AVG(imdbAverageRating) as Average_rating
FROM movies;

-- Total Number of Movies Released Each Year

SELECT 
    releaseYear, 
    COUNT(*) AS movie_count
FROM 
    movies
GROUP BY 
    releaseYear
ORDER BY 
    releaseYear ASC;


-- Movies with IMDb Rating Above 8

SELECT 
    title, 
    releaseYear, 
    imdbAverageRating
FROM 
    movies
WHERE 
    imdbAverageRating > 8
ORDER BY 
    imdbAverageRating DESC;

-- Movie by Votes

SELECT title
FROM movies
ORDER BY imdbnumvotes DESC
LIMIT 1;

-- Top 10 Highest-Rated Movies

SELECT 
    title, 
    imdbAverageRating, 
    releaseYear
FROM 
    movies
ORDER BY 
    imdbAverageRating DESC
LIMIT 10;

-- Movies Available in a Specific Country

SELECT 
    title, 
    releaseYear, 
    imdbAverageRating
FROM 
    movies
WHERE 
    FIND_IN_SET('US', availableCountries) > 0;

-- Retrieve all data from the movies table
SELECT * FROM movies;
-- Result: All columns in the movies table.

-- Top 10 Highest-Rated Movies with More Than 1000 Votes
SELECT title, type, imdbaveragerating, imdbnumvotes
FROM movies
WHERE imdbnumvotes > 1000 
ORDER BY imdbaveragerating DESC, imdbnumvotes DESC
LIMIT 10;
-- Result: Top 10 highest IMDb ratings movies with more than 1000 votes.

-- Average IMDb Rating by Type
SELECT type, AVG(imdbaveragerating) AS average_rating
FROM movies
GROUP BY type
ORDER BY average_rating;
-- Result: Average IMDb rating (Type)

-- Average IMDb Rating by Release Year
SELECT releaseyear, AVG(imdbaveragerating) AS average_rating
FROM movies
GROUP BY releaseyear
ORDER BY releaseyear DESC;
-- Result: Average IMDb rating for movies grouped by release year, sorted by year ASC.

-- Most Common Genres by Type
SELECT genres, COUNT(*) AS genre_count
FROM movies
GROUP BY type, genres
ORDER BY genre_count DESC;
-- Result: Most frequent genres.

-- Top 10 Genres with the Most Titles Rated Above 8
SELECT genres, COUNT(*) AS rating_count
FROM movies
WHERE imdbaveragerating > 8 
GROUP BY genres
ORDER BY rating_count DESC
LIMIT 10;
-- Result: Top 10 genres with the most titles and have IMDb ratings > 8.

-- Average IMDb Rating by Genre for Titles Released in 2020 and Later
SELECT genres, AVG(imdbaveragerating) AS avg_rating
FROM movies
WHERE releaseYear >= 2020
GROUP BY genres
ORDER BY avg_rating DESC;
-- Result: Average IMDb rating for genre for movies.

-- Movies Available in the Highest Number of Countries
SELECT 
    title, type, releaseYear, imdbAverageRating, imdbNumVotes, availableCountries,
    LENGTH(availableCountries) - LENGTH(REPLACE(availableCountries, ',', '')) + 1 AS numCountries
FROM 
    movies
ORDER BY 
    numCountries DESC
LIMIT 10;
-- Result: Top 10 movies available in the most no. of countries.

-- Movies with High Rating and Low Votes
SELECT title, releaseyear, imdbaveragerating, imdbnumvotes 
FROM movies
WHERE  imdbaveragerating > 8 AND imdbnumvotes < 50000;
-- Result: Movies with IMDb ratings above 8 but fewer than 50,000 votes.

-- Average IMDb Rating of All Movies
SELECT 
AVG(imdbAverageRating) as Average_rating
FROM movies;
-- Result: Overall average IMDb rating.

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
-- Result: Total no. of movies released each year.

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
-- Result: List of movies with IMDb ratings above 8.

-- Movie with the Most Votes
SELECT title
FROM movies
ORDER BY imdbnumvotes DESC
LIMIT 1;
-- Result: Title of the movie with the highest no. of votes.

-- Movies Available in a Specific Country
SELECT 
title, releaseYear, imdbAverageRating
FROM 
movies
WHERE 
    FIND_IN_SET('US', availableCountries) > 0;
-- Result: List of movies available in the United States (US).

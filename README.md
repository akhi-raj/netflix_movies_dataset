# spotify_songs_sql_project

Netflix Dataset SQL Analysis
Project Overview
This project analyzes Netflix data using SQL to explore trends, user behaviors, and content insights. The dataset provides comprehensive details on Netflix movies, series, ratings, and usage statistics, allowing us to derive insights into Netflix’s content library, user preferences, and overall streaming patterns. This project is ideal for showcasing SQL skills, including data cleaning, complex queries, data aggregation, and performance optimization.

Dataset Information
Dataset: Full Netflix Dataset
License: Public Domain (CC0 1.0)
Source: Octopus Team on Kaggle
This dataset includes various details such as:

Show titles, genres, and release years
Metadata such as runtime, description, and age rating
Country and language of production
Ratings and popularity data
Project Objectives
Content Analysis: Analyze Netflix’s library to understand the distribution of content by genre, age rating, language, and country.
User Behavior Analysis: Identify trends in user watch patterns, top-rated content, and seasonal changes in viewing behavior.
Content Popularity: Determine popular genres, highest-rated titles, and trends in release years.
Regional Analysis: Compare content availability and preferences across different countries.
Requirements
To run this project, you need:

SQL database software (e.g., MySQL)
SQL client or IDE (e.g., MySQL Workbench)

Database Schema
This is a suggested schema based on the dataset:

Table Name	Column Name	Data Type	Description
titles	title_id	INT	Unique identifier for each title
title	VARCHAR	Title of the show/movie
type	VARCHAR	Type of content (e.g., Movie, Series)
release_year	INT	Year the title was released
duration	INT	Duration in minutes
age_rating	VARCHAR	Age rating of the title
genres	genre_id	INT	Unique identifier for each genre
genre_name	VARCHAR	Name of the genre
title_genres	title_id	INT	Foreign key linking to titles
genre_id	INT	Foreign key linking to genres
ratings	title_id	INT	Foreign key linking to titles
rating	FLOAT	Average rating for the title
num_ratings	INT	Number of ratings received
countries	country_id	INT	Unique identifier for each country
country_name	VARCHAR	Name of the country
title_countries	title_id	INT	Foreign key linking to titles
country_id	INT	Foreign key linking to countries

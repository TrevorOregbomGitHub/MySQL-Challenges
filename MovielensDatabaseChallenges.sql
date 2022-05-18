-- Movielens Database Challenges
Use movielens;

-- Task 1 List the titles and release dates of movies released between 1983-1993 in reverse chronological order.
SELECT title, release_date 
FROM movies 
WHERE release_date BETWEEN "1983-01-01" AND "1993-01-01"
ORDER BY release_date DESC;

-- Task 2 Without using LIMIT, list the titles of the movies with the lowest average rating.
SELECT title, AVG(rating)
FROM movies 
JOIN ratings ON movies.id = ratings.movie_id
GROUP BY movie_id
ORDER BY AVG(rating)
;

-- Task 3 List the unique records for Sci-Fi movies where male 24-year-old students have given 5-star ratings.
SELECT movies.title, genres.name 
FROM movies
JOIN genres_movies ON genres_movies.movie_id = movies.id
JOIN genres ON genres.id = genres_movies.genre_id
JOIN ratings ON ratings.movie_id = movies.id
JOIN users ON users.id = ratings.user_id
JOIN occupations ON occupations.id = users.occupation_id
WHERE genres.name = 'Sci-Fi'
AND users.age= 24
AND users.gender = 'M'
AND occupations.name = 'Student'
AND ratings.rating = 5;

-- Task 4 List the unique titles of each of the movies released on the most popular release day.
-- Task 5 Find the total number of movies in each genre; list the results in ascending numeric order.
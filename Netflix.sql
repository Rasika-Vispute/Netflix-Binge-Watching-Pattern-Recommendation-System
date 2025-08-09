CREATE DATABASE netflix_project;
USE netflix_project;

CREATE TABLE netflix_titles (
    show_id VARCHAR(255) PRIMARY KEY,
    type VARCHAR(20),
    title TEXT,
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added DATE,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

select * from netflix_titles;   #8807 row(s) returned 

-- Get the number of columns in netflix_titles
SELECT COUNT(*) AS NumberOfColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'netflix_project' AND TABLE_NAME = 'netflix_titles';  #12

select count(*) from netflix_titles_clean;  #8807 row(s) returned 

-- Get the number of columns in netflix_titles_clean 
SELECT COUNT(*) AS NumberOfColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'netflix_project' AND TABLE_NAME = 'netflix_titles_clean';  # 14

-- Total number of records
SELECT COUNT(*) AS total_records FROM netflix_titles;    #8807 row(s) returned 

-- Count by content type
SELECT type, COUNT(*) AS count FROM netflix_titles GROUP BY type;  # Movie	6131  # TV Show	2676

-- Missing values in key columns
SELECT 
    SUM(CASE WHEN director IS NULL OR director = '' THEN 1 ELSE 0 END) AS missing_directors,
    SUM(CASE WHEN country IS NULL OR country = '' THEN 1 ELSE 0 END) AS missing_countries
FROM netflix_titles;      # missing_directors - 2634  missing_countries - 831

-- Average duration (Movies only, assuming minutes)
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS avg_duration
FROM netflix_titles
WHERE type = 'Movie' AND duration LIKE '%min%';  # avg_duration - 99.5772

-- Most frequent ratings
SELECT rating, COUNT(*) AS count
FROM netflix_titles
GROUP BY rating
ORDER BY count DESC
LIMIT 5;

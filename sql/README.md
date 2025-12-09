# 03_triggers.sql

This file contains a collection of MySQL triggers designed to enforce data integrity and validation rules within the **moviedb** database. These triggers ensure that inserted and updated values in key tables remain consistent, valid, and logically correct.

## 1. Score Range Enforcement

**Triggers:** `score_bounds_insert`, `score_bounds_update`
Ensures that movie scores always remain within the valid range of **0.0 to 10.0**. Any value outside this range is automatically adjusted to the nearest limit.

## 2. Non-Negative Gross Revenue

**Triggers:** `gross_no_negative_insert`, `gross_no_negative_update`
Prevents negative gross revenue values. If a negative value is provided, it is replaced with **0**.

## 3. Duplicate Movie Prevention

**Triggers:** `prevent_duplicate_movies`, `prevent_duplicate_movies_update`
Blocks insertion or modification of a movie if another movie with the same title and director already exists. Attempting to do so raises an SQL error.

## 4. Non-Negative Runtime Validation

**Triggers:** `runtime_no_negative_insert`, `runtime_no_negative_update`
Ensures that movie runtime is never negative. Invalid runtime values are replaced with `00:00:00`.

## 5. Release Year Validation

**Triggers:** `release_year_valid_insert`, `release_year_valid_update`
Validates that the release year is between **1900** and the current year. Invalid years result in an SQL error.

These triggers collectively protect the database from inconsistent or illogical data, maintaining reliability across all movie-related records.


# 04_views_and_queries.sql

This file defines two database views and includes several example SQL queries for retrieving structured movie data from the **moviedb** database.

## Views

### `movie_summary`

Combines key movie information into a single view.
Includes:

* movie ID
* title
* rating
* score
* gross revenue
* distributor name

This view simplifies access to commonly used movie-related data.

### `movie_genres`

Provides a list of movies along with their associated genres.
Joins movie records with their linked genre entries to present a clean title–genre pairing.

## Sample Queries

### 1. Movies with Genres, Scores, and Distributors (sorted by score)

Retrieves detailed movie information, including genre, score, and distributing company, ordered from highest to lowest score.

### 2. Movies with Gross Revenue Above a Given Threshold

Returns titles of movies whose gross revenue exceeds **2,000,000**.

### 3. Movies Released After 2010 with Scores

Selects movies released after 2010 and shows their titles, directors, release year, and scores.

### 4. Average Score by Genre

Calculates and lists the average score for each genre, sorted from highest to lowest.

### 5. Action Movies by Score

Retrieves titles, genres, scores, and distributors for movies specifically in the **Action** genre, ordered by score.

### 6. Movies Released After 2015

Returns movies released after 2015 along with director names and scores, ordered by score.

These views and queries provide ready-to-use tools for analyzing movie data, exploring genres, evaluating performance, and generating summaries across the database.


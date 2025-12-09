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


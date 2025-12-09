USE moviedb;

DELIMITER $$

-- =====================================================
-- 1. SCORE MUST BE BETWEEN 0.0 AND 10.0
-- =====================================================
CREATE TRIGGER score_bounds_insert
BEFORE INSERT ON Score
FOR EACH ROW
BEGIN
    IF NEW.score < 0.0 THEN 
        SET NEW.score = 0.0;
    ELSEIF NEW.score > 10.0 THEN 
        SET NEW.score = 10.0;
    END IF;
END$$

CREATE TRIGGER score_bounds_update
BEFORE UPDATE ON Score
FOR EACH ROW
BEGIN
    IF NEW.score < 0.0 THEN 
        SET NEW.score = 0.0;
    ELSEIF NEW.score > 10.0 THEN 
        SET NEW.score = 10.0;
    END IF;
END$$

-- =====================================================
-- 2. GROSS CANNOT BE NEGATIVE
-- =====================================================
CREATE TRIGGER gross_no_negative_insert
BEFORE INSERT ON Gross
FOR EACH ROW
BEGIN
    IF NEW.gross < 0 THEN 
        SET NEW.gross = 0;
    END IF;
END$$

CREATE TRIGGER gross_no_negative_update
BEFORE UPDATE ON Gross
FOR EACH ROW
BEGIN
    IF NEW.gross < 0 THEN 
        SET NEW.gross = 0;
    END IF;
END$$

-- =====================================================
-- 3. PREVENT DUPLICATE MOVIES 
--    Duplicate = same title AND same director
-- =====================================================
CREATE TRIGGER prevent_duplicate_movies
BEFORE INSERT ON Movies
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Movies
        WHERE title = NEW.title
          AND dir_first_name = NEW.dir_first_name
          AND dir_last_name  = NEW.dir_last_name
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate movie blocked: same title and director already exists.';
    END IF;
END$$

CREATE TRIGGER prevent_duplicate_movies_update
BEFORE UPDATE ON Movies
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Movies
        WHERE title = NEW.title
          AND dir_first_name = NEW.dir_first_name
          AND dir_last_name  = NEW.dir_last_name
          AND movieid <> OLD.movieid
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate movie blocked on update.';
    END IF;
END$$

-- =====================================================
-- 4. run_time CANNOT BE NEGATIVE
--    (runtime is TIME; TIME_TO_SEC() must be >= 0)
-- =====================================================
CREATE TRIGGER runtime_no_negative_insert
BEFORE INSERT ON Movies
FOR EACH ROW
BEGIN
    IF TIME_TO_SEC(NEW.runtime) < 0 THEN
        SET NEW.runtime = '00:00:00';
    END IF;
END$$

CREATE TRIGGER runtime_no_negative_update
BEFORE UPDATE ON Movies
FOR EACH ROW
BEGIN
    IF TIME_TO_SEC(NEW.runtime) < 0 THEN
        SET NEW.runtime = '00:00:00';
    END IF;
END$$

-- =====================================================
-- 5. release_year MUST BE BETWEEN 1900 AND CURRENT YEAR
--    (rel_year column type: YEAR)
-- =====================================================
CREATE TRIGGER release_year_valid_insert
BEFORE INSERT ON Movies
FOR EACH ROW
BEGIN
    IF NEW.rel_year < 1900 OR NEW.rel_year > YEAR(CURDATE()) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid release year: must be between 1900 and current year.';
    END IF;
END$$

CREATE TRIGGER release_year_valid_update
BEFORE UPDATE ON Movies
FOR EACH ROW
BEGIN
    IF NEW.rel_year < 1900 OR NEW.rel_year > YEAR(CURDATE()) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid release year: must be between 1900 and current year.';
    END IF;
END$$

DELIMITER ;

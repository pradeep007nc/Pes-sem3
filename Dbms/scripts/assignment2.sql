DROP DATABASE IF EXISTS pessem3;
CREATE DATABASE pessem3;
USE pessem3;

CREATE TABLE IF NOT EXISTS `pessem3`.`PROD_COMPANY` (
    `PROD_NAME` varchar(30) NOT NULL,
    `PROD_ADDRESS` varchar(30) NOT NULL,
    PRIMARY KEY (`PROD_NAME`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`MOVIE` (
    `TITLE` VARCHAR(30) NOT NULL,
    `YEAR_OF_RELEASE` INT,
    `LENGTH` INT,
    `GENRE` VARCHAR(30) NOT NULL,
    `PLOT` VARCHAR(30) NOT NULL,
    `PROD_NAME` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`TITLE`, `YEAR_OF_RELEASE`),
    FOREIGN KEY (`PROD_NAME`) REFERENCES `pessem3`.`PROD_COMPANY`(`PROD_NAME`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`ACTOR` (
    `ACTOR_ID` INT,
    `ACTOR_NAME` VARCHAR(30) NOT NULL,
    `DOB` DATE,
    PRIMARY KEY (`ACTOR_ID`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`DIRECTOR` (
    `DIRECTOR_ID` INT,
    `DIRECTOR_NAME` VARCHAR(30) NOT NULL,
    `DOB` DATE,
    PRIMARY KEY (`DIRECTOR_ID`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`ACTING` (
    `ACTOR_ID` INT,
    `TITLE` VARCHAR(30) NOT NULL,
    `YEAR_OF_RELEASE` INT,
    `ROLE` VARCHAR(30),
    PRIMARY KEY (`ACTOR_ID`, `TITLE`, `YEAR_OF_RELEASE`),
    FOREIGN KEY (`ACTOR_ID`) REFERENCES `pessem3`.`ACTOR` (`ACTOR_ID`),
    FOREIGN KEY (`TITLE`, `YEAR_OF_RELEASE`) REFERENCES `pessem3`.`MOVIE` (`TITLE`, `YEAR_OF_RELEASE`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`DIRECTION` (
    `DIRECTOR_ID` INT,
    `TITLE` VARCHAR(30) NOT NULL,
    `YEAR_OF_RELEASE` INT,
    PRIMARY KEY (`DIRECTOR_ID`, `TITLE`, `YEAR_OF_RELEASE`),
    FOREIGN KEY (`DIRECTOR_ID`) REFERENCES `pessem3`.`DIRECTOR` (`DIRECTOR_ID`),
    FOREIGN KEY (`TITLE`, `YEAR_OF_RELEASE`) REFERENCES `pessem3`.`MOVIE` (`TITLE`, `YEAR_OF_RELEASE`)
);

-- Insert data into PROD_COMPANY
INSERT INTO PROD_COMPANY (PROD_NAME, PROD_ADDRESS) VALUES
('sai', 'jainagar, bangalore'),
('dharma', 'vijaynagar'),
('gemini', 'main-1,mysore'),
('rajsri', 'phase-2, tumkur');

-- Insert data into MOVIE
INSERT INTO MOVIE (TITLE, YEAR_OF_RELEASE, LENGTH, GENRE, PLOT, PROD_NAME) VALUES
('agneepath', 1990, 85, 'action', 'revenge', 'dharma'),
('agneepath', 2012, 80, 'action', 'revenge', 'dharma'),
('kaal', 2005, 90, 'horror', 'horror', 'dharma'),
('tapasya', 1977, 86, 'family drama', 'emotional', 'rajsri'),
('vivah', 2006, 98, 'family drama', 'emotional', 'rajsri');

-- Insert data into ACTOR
INSERT INTO ACTOR (ACTOR_ID, ACTOR_NAME, DOB) VALUES
(1, 'amitabh', '1948-01-12'),
(2, 'ajay devgan', '1975-02-27'),
(3, 'Hrithik', '1980-03-18'),
(4, 'rakhee', '1960-04-05'),
(5, 'sunder', '1972-05-30'),
(6, 'shahid', '1985-06-29'),
(7, 'amrita', '1989-07-08'),
(8, 'amir khan', '1975-01-23');

-- Insert data into DIRECTOR
INSERT INTO DIRECTOR (DIRECTOR_ID, DIRECTOR_NAME, DOB) VALUES
(11, 'mukul', '1948-01-12'),
(22, 'soham', '1981-09-23'),
(33, 'karan', '1976-10-12'),
(44, 'barjatya', '1977-11-20'),
(55, 'ganguly', '1969-12-19');

-- Now, insert data into ACTING
INSERT INTO ACTING (ACTOR_ID, TITLE, YEAR_OF_RELEASE, ROLE) VALUES
(1, 'agneepath', 1990, 'hero'),
(2, 'kaal', 2005, 'hero'),
(3, 'agneepath', 2012, 'hero'),
(4, 'tapasya', 1977, 'heroin'),
(5, 'tapasya', 1977, 'villain'),
(6, 'vivah', 2006, 'hero'),
(7, 'vivah', 2006, 'heroin');

-- Finally, insert data into DIRECTION
INSERT INTO DIRECTION (DIRECTOR_ID, TITLE, YEAR_OF_RELEASE) VALUES
(11, 'agneepath', 1990),
(11, 'kaal', 2005),
(22, 'kaal', 2005),
(33, 'agneepath', 2012),
(33, 'kaal', 2005),
(44, 'tapasya', 1977),
(44, 'vivah', 2006);

-- QUERIES

-- QUERY 1
--  List the details of horror movies released in 2012 and directed by more than 2 directors 
    -- fill empty dataset 
    SELECT *
    FROM MOVIE M
    JOIN DIRECTION D ON M.TITLE = D.TITLE AND M.YEAR_OF_RELEASE = D.YEAR_OF_RELEASE
    WHERE M.GENRE = 'horror' AND M.YEAR_OF_RELEASE = 2012
    GROUP BY M.TITLE, M.YEAR_OF_RELEASE
    HAVING COUNT(D.DIRECTOR_ID) > 2;

-- query 2
-- List the details of actors who acted in movies having same titles but released before 2000 and after
-- 2010.
    SELECT A.ACTOR_ID, A.ACTOR_NAME, A.DOB
    FROM ACTOR A
    LEFT JOIN ACTING ACT ON ACT.ACTOR_ID = A.ACTOR_ID
    LEFT JOIN MOVIE M ON M.TITLE = ACT.TITLE AND ACT.YEAR_OF_RELEASE = M.YEAR_OF_RELEASE
    WHERE M.YEAR_OF_RELEASE < 2000 OR M.YEAR_OF_RELEASE > 2010;

-- QUERY 3
-- List the details of production companies producing maximum movies.
    SELECT P.PROD_NAME, P.PROD_ADDRESS
    FROM PROD_COMPANY P
    LEFT JOIN MOVIE M ON M.PROD_NAME = P.PROD_NAME
    ORDER BY COUNT(M.TITLE) DESC
    LIMIT 1;

-- QUERY 4
-- List the details of movies where director and actor have same date of birth.
    SELECT M.TITLE, M.YEAR_OF_RELEASE, M.LENGTH, M.GENRE, M.PLOT, M.PROD_NAME, ACTOR.DOB, DIRECTOR.DOB FROM MOVIE M
    JOIN ACTING ON ACTING.TITLE = M.TITLE
    JOIN ACTOR ON ACTOR.ACTOR_ID = ACTING.ACTOR_ID
    JOIN DIRECTOR ON DIRECTOR.DOB = ACTOR.DOB
    WHERE DIRECTOR.DOB = ACTOR.DOB;

-- QUERY 5
-- Retrieve the names of directors directing the horror movies.
    SELECT DISTINCT D.DIRECTOR_NAME
    FROM DIRECTOR D
    JOIN DIRECTION DIR ON D.DIRECTOR_ID = DIR.DIRECTOR_ID
    JOIN MOVIE M ON M.TITLE = DIR.TITLE
    WHERE M.GENRE = 'horror';

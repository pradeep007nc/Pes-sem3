DROP DATABASE IF EXISTS pessem3;
CREATE DATABASE pessem3;
USE pessem3;

CREATE TABLE IF NOT EXISTS `pessem3`.`PROFESSOR` (
    `PROF_ID` INT,
    `NAME` VARCHAR(30) NOT NULL,
    `RANK` VARCHAR(20) NOT NULL,
    `AGE` INT NOT NULL,
    `RESEARCH_SPECIALTY` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`PROF_ID`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`PROJECTS` (
    `PROJ_NUMBER` INT,
    `SPONSOR_NAME` VARCHAR(30) NOT NULL,
    `STARTING_DATE` DATE NOT NULL,
    `ENDING_DATE` DATE NOT NULL,
    `BUDGET` INT NOT NULL,
    `PRINCIPAL_INVESTIGATOR` INT NOT NULL,
    PRIMARY KEY (`PROJ_NUMBER`),
    FOREIGN KEY (`PRINCIPAL_INVESTIGATOR`) REFERENCES `pessem3`.`PROFESSOR` (`PROF_ID`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`GRADUATE_STUDENTS` (
    `USN` VARCHAR(30),
    `NAME` VARCHAR(30) NOT NULL,
    `AGE` INT NOT NULL,
    `DEGREE_PROGRAM` VARCHAR(30) NOT NULL,
    `PROF_ID` INT,
    PRIMARY KEY (`USN`),
    FOREIGN KEY (`PROF_ID`) REFERENCES `pessem3`.`PROFESSOR` (`PROF_ID`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`PROF_WORK` (
    `PROF_ID` INT,
    `PROJ_NUMBER` INT,
    FOREIGN KEY (`PROF_ID`) REFERENCES `pessem3`.`PROFESSOR` (`PROF_ID`),
    FOREIGN KEY (`PROJ_NUMBER`) REFERENCES `pessem3`.`PROJECTS` (`PROJ_NUMBER`)
);

CREATE TABLE IF NOT EXISTS `pessem3`.`STUDENT_WORK` (
    `USN` VARCHAR(30),
    `PROJ_NUMBER` INT,
    FOREIGN KEY (`USN`) REFERENCES `pessem3`.`GRADUATE_STUDENTS` (`USN`),
    FOREIGN KEY (`PROJ_NUMBER`) REFERENCES `pessem3`.`PROJECTS` (`PROJ_NUMBER`)
);

INSERT INTO `pessem3`.`PROFESSOR` VALUES    (1, "RAJA", "PROFESSOR", 53, "DATA SCIENCE"),
                                            (2, "MANU", "ASST PROF", 42, "DATA MINING"),
                                            (3, "RANI", "ASST PROF", 35, "DATA MINING"),
                                            (4, "DEEPU", "ASST PROF", 32, "JAVA"),
                                            (5, "INDRA", "ASST PROF", 30, "NETWORK");


INSERT INTO `pessem3`.`PROJECTS` VALUES (11, "AICTE", '2006-01-23', '2010-02-23', 300000, 1),
                                        (22, "UGC", '2006-03-29', '2010-04-25', 400000, 1),
                                        (33, "PESU", '2011-05-12', '2012-06-15', 200000, 1),
                                        (44, "CSIR", '2012-07-15', '2014-08-20', 90000, 3),
                                        (55, "VTU", '2010-09-05', '2012-10-25', 80000, 2);

INSERT INTO `pessem3`.`GRADUATE_STUDENTS` VALUES    ('101', 'Arpita', 24, 'MTech', 1),
                                                    ('102', 'Shruti', 23, 'MTech', 1),
                                                    ('103', 'Aditi', 22, 'MCA', 3),
                                                    ('104', 'Kishore', 22, 'MCA', 2),
                                                    ('105', 'Asha', 25, 'MCA', 4);
                                       
INSERT INTO `pessem3`.`PROF_WORK` VALUES    (1, 11),
                                            (1, 22),
                                            (1, 33),
                                            (1, 44),
                                            (1, 55),
                                            (2, 22),
                                            (3, 44),
                                            (4, 55),
                                            (5, 11);

INSERT INTO `pessem3`.`STUDENT_WORK` VALUES ('101', 11),
                                            ('101', 22),
                                            ('102', 11),
                                            ('102', 55),
                                            ('103', 22),
                                            ('104', 44),
                                            ('105', 33);


-- QUERIES

-- QUERY 1
    -- Retrieve the names of all professors who do not have an ongoing project of
    -- more than 1 lakh.
    SELECT `PROFESSOR`.`NAME`
    FROM `pessem3`.`PROFESSOR`
    LEFT JOIN `pessem3`.`PROJECTS` ON `PROFESSOR`.`PROF_ID` = `PROJECTS`.`PRINCIPAL_INVESTIGATOR`
    WHERE `PROJECTS`.`BUDGET` IS NULL OR `PROJECTS`.`BUDGET` <= 100000;

-- QUERY 2
    -- Retrieve the names of all graduate students along with their professors
    -- under whom they work and project sponsor.
 -- Retrieve the names of all graduate students along with their professors
-- under whom they work and project sponsor.
    SELECT
        `GRADUATE_STUDENTS`.`NAME` AS GRAD_NAME,
        `PROFESSOR`.`NAME` AS PROF_NAME,
        `PROJECTS`.`SPONSOR_NAME` AS SPONSOR_NAME
    FROM
        `pessem3`.`GRADUATE_STUDENTS`
    LEFT JOIN
        `pessem3`.`PROFESSOR` ON `GRADUATE_STUDENTS`.`PROF_ID` = `PROFESSOR`.`PROF_ID`
    LEFT JOIN
        `pessem3`.`STUDENT_WORK` ON `GRADUATE_STUDENTS`.`USN` = `STUDENT_WORK`.`USN`
    LEFT JOIN
        `pessem3`.`PROJECTS` ON `STUDENT_WORK`.`PROJ_NUMBER` = `PROJECTS`.`PROJ_NUMBER`;


-- QUERY 3

-- QUERY 4


-- EXTRA QUERIES

-- QUERY 1

-- SELECT `PROFESSOR`.`NAME`, COUNT(`GRADUATE_STUDENTS`.`USN`) 
-- FROM `pessem3`.`PROFESSOR`
-- LEFT JOIN `pessem3`.`GRADUATE_STUDENTS` 
-- ON `PROFESSOR`.`PROF_ID` = `GRADUATE_STUDENTS`.`PROF_ID`
-- GROUP BY `PROFESSOR`.`PROF_ID`, `PROFESSOR`.`NAME`;


-- -- QUERY 2

-- SELECT `PROFESSOR`.`NAME`, COUNT(`PROJECTS`.`PROJ_NUMBER`)
-- FROM `pessem3`.`PROFESSOR`
-- LEFT JOIN `pessem3`.`PROJECTS`
-- ON `PROFESSOR`.`PROF_ID` = `PROJECTS`.`PRINCIPAL_INVESTIGATOR`
-- GROUP BY `PROFESSOR`.`PROF_ID`, `PROFESSOR`.`NAME`;

-- QUERY 3

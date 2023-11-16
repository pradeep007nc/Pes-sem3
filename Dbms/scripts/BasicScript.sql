USE pessem3;

-- Drop the tables if they exist
DROP TABLE IF EXISTS Dept;
DROP TABLE IF EXISTS Person;

-- Recreate the tables
CREATE TABLE IF NOT EXISTS Dept (
    `dept_id` VARCHAR(10),
    `dept name` VARCHAR(30),
    `dept role` VARCHAR(20),
    PRIMARY KEY (`dept_id`)
);
TRUNCATE TABLE Dept;

INSERT INTO Dept VALUES ('miamor', 'tech', 'ningyake');

CREATE TABLE IF NOT EXISTS Person (
    `id` INT,
    `name` VARCHAR(30),
    `age` INT, 
    `date` DATE,
    `dept_id` VARCHAR(10),
    `mob no` CHAR(10),
    PRIMARY KEY (`id`), 
    FOREIGN KEY (`dept_id`) REFERENCES Dept (`dept_id`),
    CONSTRAINT AGE_RANGE CHECK (`age` >= 18 AND `age` <= 35)
);
TRUNCATE TABLE Person;

INSERT INTO Person VALUES (10, 'Pradeep2', 21, '2001-05-11', 'miamor', 'a');

-- Update the 'dept name' in the 'Dept' table for a specific condition
UPDATE Dept SET `dept name` = 'pradeephi' WHERE `dept_id` = 'miamor';

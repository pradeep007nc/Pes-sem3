    USE pessem3;

    DROP TABLE IF EXISTS Dept;
    DROP TABLE IF EXISTS Person;

    CREATE TABLE IF NOT EXISTS Dept(
        `dept_id` VARCHAR(10),
        `dept name` VARCHAR(30),
        `dept role` VARCHAR(20),
        PRIMARY KEY(`Dept_id`)
    );

    INSERT INTO Dept VALUES ('miamor', 'tech', 'ningyake');

    CREATE TABLE IF NOT EXISTS Person (
        `id` INT,
        `name` VARCHAR(30),
        `date` DATE,
        `dept_id` VARCHAR(10),
        `mob no` CHAR(10),
        PRIMARY KEY(`id`), FOREIGN KEY(`dept_id`) REFERENCES Dept(`dept_id`)
    );

    INSERT INTO Person VALUES (10, 'Pradeep2', '2001-05-11', 'miamor', 'a');
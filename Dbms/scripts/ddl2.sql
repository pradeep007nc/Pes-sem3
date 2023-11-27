DROP DATABASE IF EXISTS pessem3;
CREATE DATABASE pessem3;
USE pessem3;

create table employee(
    employee_id int primary key,
    name varchar(50) not null,
    projects varchar(100) not null
);

insert into employee(employee_id, name, projects) values
    (1, 'Pradeep', 'web,maki'),
    (2, 'lola', 'app,basj'),
    (3, 'maimor', 'maki,loliu'),
    (4, 'luka', 'basj,loliu'),
    (5, 'senpai', 'web,maki');

create table project(
    project_id int primary key,
    name varchar(50) not null
);

insert into project(project_id, name) values
    (1, 'web'),
    (2, 'app'),
    (3, 'maki'),
    (4, 'basj'),
    (5, 'loliu');

create table works_on(
    employee_id int,
    project_id int,
    foreign key (employee_id) references employee(employee_id),
    foreign key (project_id) references project(project_id)
);

insert into works_on(employee_id, project_id) values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (3, 5);


CREATE TABLE students (
    id serial PRIMARY KEY,
    first_name varchar(64) NOT NULL CHECK(first_name !=''),
    last_name varchar(64) NOT NULL CHECK(last_name !=''),
    group_id int REFERENCES group(id)
);

CREATE TABLE group (
    id serial PRIMARY KEY,
    faculty_id int REFERENCES faculty(id)
);

CREATE TABLE faculty (
    id serial PRIMARY KEY,
    name varchar(64) NOT NULL CHECK(name !='')
);

INSERT INTO faculty VALUES
--('sciences'),
--('philology'),
--('history');


CREATE TABLE subject (
    id serial PRIMARY KEY,
    name varchar(64) NOT NULL CHECK(name !=''),
    lecturer varchar(64) NOT NULL CHECK(lecturer !='')
);

CREATE TABLE exam (
    id serial PRIMARY KEY,
    students_id int REFERENCES students(id),
    subject_id int REFERENCES subject(id),
    grade int
);
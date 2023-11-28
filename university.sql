CREATE TABLE faculty (
    id serial PRIMARY KEY,
    name varchar(64) NOT NULL CHECK(name !='')
);

INSERT INTO faculty (name)
VALUES ('history');

INSERT INTO faculty (name)
VALUES ('sciences'), ('philology');

CREATE TABLE subject (
    id serial PRIMARY KEY,
    name varchar(64) NOT NULL CHECK(name !=''),
    lecturer varchar(64) NOT NULL CHECK(lecturer !=''),
);

ALTER TABLE subject ADD COLUMN faculty_id int REFERENCES faculty(id);

INSERT INTO subject (name, lecturer, faculty_id) VALUES
    ('chimistry', 'Ivanov D.O.',2);
INSERT INTO subject (name, lecturer, faculty_id) VALUES
    ('biology', 'Petrov L.G.', 1),
    ('Germanic language', 'Dibrova O.M.', 3);
INSERT INTO subject (name, lecturer, faculty_id) VALUES
    ('geography', 'Semenov P.A.', 2);
    
UPDATE subject SET name = 'Ukraine history' WHERE id = 2;

CREATE TABLE number_group (
    faculty_id int REFERENCES faculty(id),
    subject_id int REFERENCES subject(id),
    name varchar(5),
    PRIMARY KEY(faculty_id, subject_id)
);

ALTER TABLE number_group ADD COLUMN id serial PRIMARY KEY;

INSERT INTO number_group (faculty_id, subject_id, name) VALUES
(1, 2, '-H'),
(2, 1, '-X'),
(2, 4, '-G');

CREATE TABLE pupils (
    id serial PRIMARY KEY,
    first_name varchar(64) NOT NULL CHECK(first_name !=''),
    last_name varchar(64) NOT NULL CHECK(last_name !='')
);
ALTER TABLE pupils ADD COLUMN number_group_name varchar(20);

INSERT INTO pupils (first_name, last_name) VALUES
('Koshkin', 'Denis'),
('Pomashkin', 'Anton'),
('Cnigova', 'Maria');

CREATE TABLE exam (
    id serial PRIMARY KEY,
    pupils_id int REFERENCES pupils(id),
    subject_id int REFERENCES subject(id),
    grade numeric
);

INSERT INTO exam (pupils_id, subject_id, grade) VALUES
(1, 2, 4),
(2, 2, 8),
(3, 1, 10);

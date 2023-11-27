DROP TABLE messanges;

CREATE TABLE person(
    id serial PRIMARY KEY,
    name varchar(65) NOT NULL CHECK (name !=''),
    age int CHECK(age >= 0)
);

INSERT INTO person (name, age) VALUES
('Mark', 25),
('Gorniya', 17);

INSERT INTO person (name, age) VALUES
('Bill', 64),
('Mary', 43);

CREATE TABLE chats(
    id serial PRIMARY KEY,
    name varchar(65) NOT NULL CHECK (name !=''),
    owner_id int REFERENCES person(id),
    created_at timestamp DEFAULT current_timestamp
);

INSERT INTO chats(name, owner_id) VALUES
('superchat', 1);

INSERT INTO chats(name, owner_id) VALUES
('chat', 3),
('super', 2);

CREATE TABLE messanges(
    id serial PRIMARY KEY,
    body text CHECK(body !='') NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    is_reading boolean DEFAULT false NOT NULL,
    author_id int,
    chat_id int,
    FOREIGN KEY (author_id, chat_id) REFERENCES chats_to_person (person_id, chat_id)
);

INSERT INTO messanges (body, author_id, chat_id) VALUES
('Hi', 1, 2),
('How are you?', 1, 2),
('I am fine!And you?', 3, 1);


CREATE TABLE chats_to_person(
    chat_id int REFERENCES chats(id),
    person_id int REFERENCES person (id),
    join_at timestamp NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY(chat_id, person_id)
);

INSERT INTO chats_to_person(chat_id, person_id) VALUES
(2, 1),
(1, 3);
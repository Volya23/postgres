CREATE TABLE test();

DROP TABLE users;

CREATE TABLE users(
    first_name varchar(64),
    last_name varchar (64),
    biography text,
    gender varchar (30),
    is_subscibe boolean,
    birthday date,
    foot_size smallint,
    height numeric(5, 2)
);
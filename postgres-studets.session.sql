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

INSERT INTO users VALUES (
    'Donald',
    'Tramp',
    '',
    'male',
    false,
    '1976-11-25',
    NULL,
    1.97
),
(
    'John',
    'Doe',
    NULL,
    'male',
    true,
    '1976-01-25',
    26,
    2.17
)
;
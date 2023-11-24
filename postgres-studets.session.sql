CREATE TABLE test();

DROP TABLE users;

CREATE TABLE users(
    first_name varchar(64) NOT NULL CHECK(first_name !=''),
    last_name varchar (64), -- NOT NULL - записи зі значенням NULL не будуть додаваться в таблицю
    biography text, -- CHECK(first_name !='') - не пропускає строки де є умови котрі вказані в дужках
    gender varchar (30),
    is_subscibe boolean,
    birthday date UNIQUE, -- UNIQUE - унікальне значення, наприклад, щоб не було однакових імейлов для різних користувачів
    foot_size smallint,
    height numeric(5, 2)
);

INSERT INTO users VALUES ( --можна записувати в стовпчик, а також в строчку
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
    'John', 'Doe', NULL, 'male', true, '1976-01-25', 26, 2.17);

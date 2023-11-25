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

ALTER TABLE users ADD COLUMN email text;
ALTER TABLE users ADD COLUMN id serial PRIMARY KEY;


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

DROP TABLE orders;

CREATE TABLE orders(
    id serial PRIMARY KEY,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    customer_id int REFERENCES users(id)
);

CREATE TABLE orders_to_products(
    order_id int REFERENCES orders(id),
    products_id int REFERENCES products(id),
    quantity int,
    PRIMARY KEY(order_id, products_id)
);
CREATE TABLE products(
        id serial PRIMARY KEY,
        brand varchar(200) NOT NULL,
        model varchar(200) NOT NULL,
        descripsion text,
        price numeric (10, 2) NOT NULL CHECK (price > 0),
        discounted_price numeric(10, 2) CHECK (discounted_price <= price)
    );
    -- після створення таблиці, якщо потрібно внести зміни

    -- добавлення обмежень:
    ALTER TABLE products ADD CONSTRAINT "unique_brand_model_pair" UNIQUE(brand, model);

    -- добавленняя стовця:
    ALTER TABLE products ADD COLUMN quantity int;

    ALTER TABLE products ADD CONSTRAINT "products_quantity_check" CHECK (quantity >= 0);

    --для видалення обмежень або стовпців:
    ALTER TABLE products DROP CONSTRAINT --COLUMN 
    "products_quantity_check";
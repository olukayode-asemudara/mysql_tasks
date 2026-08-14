CREATE DATABASE ecommerce_db;

CREATE TABLE users (
	id SERIAL PRIMARY KEY auto_increment,
	full_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
    year_of_birth year
);

CREATE TABLE products(
	id SERIAL PRIMARY KEY auto_increment,
    product_name VARCHAR(100) NOT NULL,
    product_price double NOT NULL,
    product_slug VARCHAR(100),
    product_description VARCHAR(200),
    product_quantity int NOT NULL,
    product_image VARCHAR(100)
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY auto_increment,
    order_date date,
    customer_id VARCHAR(50),
    item_quantity int NOT NULL,
    sub_total int NOT NULL
)
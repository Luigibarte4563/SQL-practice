CREATE DATABASE inventory_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    sku_code VARCHAR(30) NOT NULL UNIQUE,
    product_name VARCHAR(100) NOT NULL,
    manufacture_date DATE NOT NULL,
    price DECIMAL(10,2) DEFAULT 0.0,
    in_stock TINYINT(1) DEFAULT 1,
    product_description TEXT
);

INSERT INTO products 
(sku_code, product_name, manufacture_date, price, in_stock, product_description)
VALUES
('SKU001', 'Laptop', '2026-01-10', 45000.00, 1, 'High performance laptop');

ALTER TABLE products
ADD COLUMN supplier_name VARCHAR(50);

ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(150) NOT NULL;

ALTER TABLE products
DROP COLUMN product_description;

UPDATE products
SET price = 15.99
WHERE product_id = 1;

DELETE FROM products
WHERE product_id = 2;

DROP TABLE products;

DROP DATABASE inventory_db;
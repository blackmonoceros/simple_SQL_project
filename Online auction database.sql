CREATE TABLE user (
id INT PRIMARY KEY,
name VARCHAR(50),
surname VARCHAR(50),
age INT,
CONSTRAINT check_age CHECK (age >= 18)
);

CREATE TABLE product (
id INT PRIMARY KEY,
name VARCHAR(100),
price DECIMAL(10, 2),
category_id INT,
CONSTRAINT check_price CHECK (price > 0)
); CREATE TABLE offer (
id INT PRIMARY KEY,
user_id INT,
product_id INT,
price DECIMAL(10, 2),
CONSTRAINT fk_user_offer FOREIGN KEY (user_id) REFERENCES user(id),
CONSTRAINT fk_product_offer FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE category (
id INT PRIMARY KEY,
name VARCHAR(50)
); CREATE TABLE rating (
id INT PRIMARY KEY,
user_id INT,
product_id INT,
rating_value INT,
CONSTRAINT fk_user_rating FOREIGN KEY (user_id) REFERENCES
user(id),
CONSTRAINT fk_product_rating FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE transaction (
id INT PRIMARY KEY,
user_id INT,
product_id INT,
transaction_date DATE,
transaction_amount DECIMAL(10, 2),
CONSTRAINT fk_user_transaction FOREIGN KEY (user_id) REFERENCES
user(id),
CONSTRAINT fk_product_transaction FOREIGN KEY (product_id) REFERENCES product(id)
); GO
-- Creating views
CREATE VIEW number_of_offers_for_product AS
SELECT product_id, COUNT(*) AS number_of_offers
FROM offer
GROUP BY product_id;
GO
CREATE VIEW average_product_rating AS
SELECT product_id, AVG(rating_value) AS average_rating
FROM rating
GROUP BY product_id;
GO
CREATE VIEW highest_offer_for_product AS
SELECT product_id, MAX(price) AS highest_offer
FROM offer
GROUP BY product_id;
GO
CREATE VIEW products_in_category AS
SELECT product.id AS product_id, product.name, category.id AS category_id
FROM product
JOIN category ON product.category_id = category.id;
GO
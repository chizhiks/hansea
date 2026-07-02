--liquibase formatted sql

--changeset Andrii Chyzhov:009

CREATE TABLE categories_products
(
    category_id BIGINT NOT NULL REFERENCES categories (id),
    product_id  BIGINT NOT NULL REFERENCES products (id),
    PRIMARY KEY (category_id, product_id)
);

CREATE INDEX idx_categories_products_category_id ON categories_products (category_id);
CREATE INDEX idx_categories_products_product_id ON categories_products (product_id);
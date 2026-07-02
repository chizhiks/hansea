--liquibase formatted sql

--changeset Andrii Chyzhov:005

CREATE TABLE products
(
    id             BIGSERIAL PRIMARY KEY,
    name           VARCHAR(255) NOT NULL,
    description    TEXT         NOT NULL,
    price          BIGINT       NOT NULL,
    stock_quantity INTEGER      NOT NULL,
    seller_id      BIGINT       NOT NULL REFERENCES users (id) ON DELETE RESTRICT
);

CREATE INDEX idx_products_seller_id ON products (seller_id);
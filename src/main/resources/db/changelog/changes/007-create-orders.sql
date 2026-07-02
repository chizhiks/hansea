--liquibase formatted sql

--changeset Andrii Chyzhov:007

CREATE TABLE orders
(
    id              BIGSERIAL PRIMARY KEY,
    status          VARCHAR(20)  NOT NULL DEFAULT 'PENDING',
    postal_code     VARCHAR(20)  NOT NULL,
    country         VARCHAR(100) NOT NULL,
    city            VARCHAR(100) NOT NULL,
    street          VARCHAR(255) NOT NULL,
    building_number VARCHAR(10)  NOT NULL,
    complement      VARCHAR(100),
    customer_id     BIGINT       NOT NULL REFERENCES users (id) ON DELETE RESTRICT
);

CREATE INDEX idx_orders_customer_id ON orders (customer_id);
--liquibase formatted sql

--changeset Andrii Chyzhov:008

CREATE TABLE order_items
(
    id         BIGSERIAL PRIMARY KEY,
    product_id BIGINT  NOT NULL REFERENCES products (id) ON DELETE RESTRICT,
    quantity   INTEGER NOT NULL,
    price      BIGINT  NOT NULL,
    order_id   BIGINT  NOT NULL REFERENCES orders (id) ON DELETE CASCADE
);

CREATE INDEX idx_order_items_product_id ON order_items (product_id);
CREATE INDEX idx_order_items_order_id ON order_items (order_id);
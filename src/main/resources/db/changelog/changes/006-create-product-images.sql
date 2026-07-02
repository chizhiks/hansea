--liquibase formatted sql

--changeset Andrii Chyzhov:006

CREATE TABLE product_images
(
    id         BIGSERIAL PRIMARY KEY,
    link       TEXT   NOT NULL,
    product_id BIGINT NOT NULL REFERENCES products (id) ON DELETE CASCADE
);

CREATE INDEX idx_product_images_product_id ON product_images (product_id);
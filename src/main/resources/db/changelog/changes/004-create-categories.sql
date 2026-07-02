--liquibase formatted sql

--changeset Andrii Chyzhov:004

CREATE TABLE categories
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);
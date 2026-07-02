--liquibase formatted sql

--changeset Andrii Chyzhov:002

CREATE TABLE user_profiles
(
    id              BIGSERIAL PRIMARY KEY,
    user_id         BIGINT       NOT NULL UNIQUE REFERENCES users (id) ON DELETE CASCADE,
    first_name      VARCHAR(100) NOT NULL,
    last_name       VARCHAR(100) NOT NULL,
    patronymic      VARCHAR(100),
    telephone       VARCHAR(20)  NOT NULL,
    birth_date      DATE         NOT NULL,
    postal_code     VARCHAR(20)  NOT NULL,
    country         VARCHAR(100) NOT NULL,
    city            VARCHAR(100) NOT NULL,
    street          VARCHAR(255) NOT NULL,
    building_number VARCHAR(10)  NOT NULL,
    complement      VARCHAR(100)
);

CREATE INDEX idx_user_profiles_user_id ON user_profiles (user_id);
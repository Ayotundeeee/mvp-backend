DROP DATABASE IF EXISTS mvp_dev;
CREATE DATABASE mvp_dev;

\c mvp_dev;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS subcategories;
DROP TABLE IF EXISTS connections;
DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS conversations;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS metrics;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    password TEXT,
    job_title TEXT,
    signup_date TIMESTAMP
);
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);
CREATE TABLE subcategories (
    id SERIAL PRIMARY KEY,
    category_id INTEGER REFERENCES categories (id),
    name TEXT
);
CREATE TABLE connections (
    id SERIAL PRIMARY KEY,
    mentor_id INTEGER REFERENCES users (id),
    mentee_id INTEGER REFERENCES users (id),
    category_id INTEGER REFERENCES categories (id),
    subcategory_id INTEGER REFERENCES subcategories (id),
    metric_one INTEGER,
    metric_two INTEGER,
    metric_three INTEGER,
    metric_four INTEGER,
    metric_five INTEGER,

);
CREATE TABLE assignments (

);
CREATE TABLE conversations (

);
CREATE TABLE messages (

);
CREATE TABLE metrics (

);


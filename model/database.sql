create database library;

create TABLE IF NOT EXISTS users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255),
  role VARCHAR(255),
  books VARCHAR(255)
);

create TABLE IF NOT EXISTS authors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

create TABLE IF NOT EXISTS books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  authorId INTEGER,
  qty INTEGER,
  FOREIGN KEY (authorId) REFERENCES authors (id)
);
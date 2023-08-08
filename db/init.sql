CREATE TABLE profiles (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(155),
    last_name VARCHAR(155),
    state VARCHAR(6) 
);

INSERT INTO profiles (first_name, last_name, state) VALUES ('John', 'Smith', 'male');
INSERT INTO profiles (first_name, last_name, state) VALUES ('Mike', 'Phoele', 'male');
INSERT INTO profiles (first_name, last_name, state) VALUES ('Kate', 'Doel', 'female');

CREATE TABLE users (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    username VARCHAR(155) NOT NULL,
    email VARCHAR(155) UNIQUE NOT NULL ,
    role VARCHAR(50) NOT NULL, 
    dateCreate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    profileld INT UNIQUE,
    FOREIGN KEY (profileld) REFERENCES profiles(id)
);

INSERT INTO users (username, email, role,  profileld) VALUES ('smith123', 'smith.john@gmail.com', 'admin', 1);
INSERT INTO users (username, email, role,  profileld) VALUES ('phoelmike', 'mike.p@gmail.com', 'user', 2);
INSERT INTO users (username, email, role,  profileld) VALUES ('katekitty', 'kitty@gmail.com', 'user', 3);
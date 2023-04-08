CREATE DATABASE nodejsproject;
use nodejsproject;

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    status TINYINT DEFAULT 1
);
CREATE TABLE tours(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    image text(1000),
    price FLOAT(10,3),
    sale_price FLOAT(10,3),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    status TINYINT DEFAULT 1,
    description VARCHAR(250)
);
CREATE TABLE accounts(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250),
    email VARCHAR(1000) NOT NULL,
    password VARCHAR(1000) NOT NULL
);
CREATE TABLE favourites(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    image text(1000),
    price FLOAT(10,3),
    sale_price FLOAT(10,3),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    status TINYINT DEFAULT 1,
    description VARCHAR(250),
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts(id),
    tour_id INT,
    FOREIGN KEY (tour_id) REFERENCES tours(id)
);
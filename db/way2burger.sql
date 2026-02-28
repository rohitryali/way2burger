CREATE DATABASE IF NOT EXISTS way2burger;

USE way2burger;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(6,2),
    img VARCHAR(255)
);

INSERT INTO menu_items (name, price, img) VALUES
('Veg Roll', 150, 'https://bit.ly/way2vegroll'),
('Chicken Shawarma', 200, 'https://bit.ly/way2shawarma'),
('Veg Burger', 120, 'https://bit.ly/way2vegburger'),
('Mocktail', 100, 'https://bit.ly/way2mocktail'),
('Fries', 130, 'https://bit.ly/way2fries');

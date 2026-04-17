-- CREATE DATABASE Shopmanager;
USE Shopmanager;

CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(15, 2),
    stock INT CHECK (stock >=0),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Categories (category_name) VALUES 
('Dien tu'), 
('Thoi trang');

-- thêm dữ liệu vào bảng
INSERT INTO Products (product_name, price, stock, category_id) VALUES 
('iPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000, 5, 1),
('Ao so mi nam', 5000000, 50, 2),
('Giay the thao', 1200000, 20, 2);

UPDATE Products
SET price = 26000000
WHERE  product_name = 'iPhone 15';

UPDATE Products
SET stock = stock + 10
WHERE category_id = 1;

DELETE FROM Products
WHERE  product_id = 4;

DELETE FROM Products
WHERE price < 1000000 ;

SELECT * FROM Products;

SELECT * FROM Products 
WHERE stock > 15;

SELECT * FROM Products 
WHERE product_name <> 'iPhone 15' AND stock > 0;

SELECT * FROM Products 
WHERE category_id <> 1 AND price > 500000;




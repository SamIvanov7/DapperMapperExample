-- Insert data into Customers
INSERT INTO Customers (first_name, last_name, email, city) VALUES
('John', 'Doe', 'john.doe@example.com', 'New York'),
('Jane', 'Doe', 'jane.doe@example.com', 'Los Angeles');

-- Insert data into Products
INSERT INTO Products (name, price) VALUES
('Laptop', 1200.00),
('Smartphone', 800.00);

-- Insert data into Order
INSERT INTO [Order] (order_date, amount, customer_id) VALUES
('2023-01-01', 2000.00, 1);

-- Insert data into ProductsOrder
INSERT INTO ProductsOrder (id_order, id_product) VALUES
(1, 1),
(1, 2);
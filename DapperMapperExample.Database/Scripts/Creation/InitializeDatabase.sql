CREATE DATABASE ShopDatabase;
GO

USE ShopDatabase;
GO

-- Create Customers Table
CREATE TABLE Customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(255),
    last_name NVARCHAR(255),
    email NVARCHAR(255),
    city NVARCHAR(255)
);
GO

-- Create Order Table
CREATE TABLE [Order] (
    id INT PRIMARY KEY IDENTITY(1,1),
    order_date DATE,
    amount DECIMAL(10, 2),
    customer_id INT,
    CONSTRAINT FK_Order_Customers FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
GO

-- Create Products Table
CREATE TABLE Products (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255),
    price DECIMAL(10, 2)
);
GO

-- Create ProductsOrder Junction Table
CREATE TABLE ProductsOrder (
    id_order INT,
    id_product INT,
    CONSTRAINT FK_ProductsOrder_Order FOREIGN KEY (id_order) REFERENCES [Order](id),
    CONSTRAINT FK_ProductsOrder_Products FOREIGN KEY (id_product) REFERENCES Products(id),
    PRIMARY KEY (id_order, id_product)
);
GO
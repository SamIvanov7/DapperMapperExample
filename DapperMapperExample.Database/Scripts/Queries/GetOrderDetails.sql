SELECT o.id AS OrderID, o.order_date, c.first_name, c.last_name, p.name AS ProductName, p.price
FROM [Order] o
JOIN Customers c ON o.customer_id = c.id
JOIN ProductsOrder po ON o.id = po.id_order
JOIN Products p ON po.id_product = p.id;

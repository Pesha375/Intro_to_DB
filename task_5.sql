-- Insert a single row into the customers table, ignoring if customer_id 1 already exists
INSERT IGNORE INTO customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');

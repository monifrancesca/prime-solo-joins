
    -- 1. Get all customers and their addresses.
    SELECT first_name, last_name, street, city, state, zip
    	FROM customers, addresses
    	WHERE customers.id = addresses.customer_id;


    -- 2. Get all orders and their line items.
    SELECT order_date, total, unit_price, quantity, order_id, product_id
        FROM line_items, orders
        WHERE line_items.id = orders.id;


    -- 3. Which warehouses have cheetos?
    SELECT warehouse.warehouse FROM products
    JOIN warehouse_product ON products.id = warehouse_product.product_id
    JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
    WHERE description = 'cheetos';


    -- 4. Which warehouses have diet pepsi?
    SELECT warehouse.warehouse FROM products
    JOIN warehouse_product ON products.id = warehouse_product.product_id
    JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
    WHERE description = 'diet pepsi';



    -- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
    SELECT customers.first_name, customers.last_name, address_id FROM customers
    JOIN addresses ON customers.id = addresses.id
    JOIN orders ON addresses.id = orders.id;
    ORDER BY id ASC;


    -- 6. How many customers do we have?
    SELECT * FROM customers;


    -- 7. How many products do we carry?
    SELECT * FROM products;


    -- 8. What is the total available on-hand quantity of diet pepsi?
    SELECT sum(warehouse_product.on_hand) FROM products
    JOIN warehouse_product ON products.id = warehouse_product.product_id
    WHERE warehouse_product.product_id = 6;



USE DZ1;

-- 1
CREATE TABLE sales(
	id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	count_product VARCHAR(5) NOT NULL
);

INSERT INTO sales(order_date, count_product)
VALUES
('2022-01-01',156),
('2022-01-02',180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT*FROM sales;

-- 2
SELECT id,
	IF (count_product<100, 'Маленький заказ',
		IF (count_product BETWEEN 100 AND 300, 'Средний заказ',
			IF (count_product>300, 'Большой заказ', '--')
            )
		) AS 'Тип заказа'
FROM sales;

CREATE TABLE sales(
	id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	count_product VARCHAR(5) NOT NULL
);

-- 3
CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	employee_id VARCHAR(5) NOT NULL,
	amount VARCHAR(10) NOT NULL,
    order_status VARCHAR(20) NOT NULL
);

INSERT INTO orders(employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT*FROM orders;

SELECT*,
	IF (order_status='OPEN', "Order is in open state",
		IF (order_status='CLOSED', "Order is closed", 
			IF (order_status='CANCELLED', "Order is cancelled",'-')
            )
		) AS 'full_order_status'
FROM orders;
			

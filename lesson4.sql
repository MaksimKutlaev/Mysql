USE lesson1;

CREATE TABLE members
(
member_id INT AUTO_INCREMENT,
name VARCHAR (100) ,
PRIMARY KEY (member_id)
);

CREATE TABLE committees
(
committee_id INT AUTO_INCREMENT,
name VARCHAR (100),
PRIMARY KEY (committee_id)
);

INSERT INTO members (name)
VALUES("John"), ("Jane"), ("wary"), ("David"), ("2melia");
INSERT INTO committees (name)
VALUES ("John"), ("Mary"), ("Amelial"), ("Joe");
SELECT * FROM members;

/*
Задание:
Выведите участников, которые также являются членами комитета, используйте INNER JOIN (пересечение 2 таблиц по имени);
*/

SELECT * FROM members
INNER JOIN committees
USING(name);

CREATE TABLE products (
product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category INT NULL,
product_name VARCHAR(100) NOT NULL
);

-- Создание таблицы с категориями
CREATE TABLE categories (
category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL
);

-- Добавление данных в таблицу с товарами
INSERT INTO products(category, product_name)
VALUES (1, 'Системный блок'),
(1, 'Монитор'),
(2, 'Холодильник'),
(2, 'Телевизор'),
(NULL, 'Операционная система');

-- Добавление данных в таблицу с категориями
INSERT INTO categories (category_name)
VALUES ('Комплектующие компьютера'),
('Бытовая техника'),
('Мобильные устройства');

SELECT 
    p.product_name, c.category_name
FROM
    products p
        LEFT JOIN
    categories c ON p.category = c.category_id 
UNION SELECT 
    p.product_name, c.category_name
FROM
    products p
        RIGHT JOIN
    categories c ON p.category = c.category_id;

/*
Задание:
1. Выведите участников, которые являются членами комитета (Используя LEFT JOIN, выполните соединение двух таблиц по полю “Имя”)
2.* Выведите участников, которые не являются членами комитета
*/
SELECT * FROM committees LEFT JOIN members USING(name);
SELECT * FROM committees LEFT JOIN members USING(name) WHERE members.name IS NULL;

/*
Задание:
1. Найти членов комитета, которых нет в members с помощью RIGHT JOIN
2. Выполнить RIGHT JOIN между 2 таблицами по полю “Имя”
*/

SELECT * FROM committees RIGHT JOIN members USING(name) WHERE committees.name IS NULL;
SELECT * FROM committees RIGHT JOIN members USING(name);

CREATE TABLE t1(
id INT PRIMARY KEY
);

CREATE TABLE t2 (
id INT PRIMARY KEY
);

INSERT INTO t1 VALUES (1),(2),(3);
INSERT INTO t2 VALUES (2),(3),(4); -- UNION
SELECT id FROM t1
UNION
SELECT id FROM t2;

SELECT id FROM t1
UNION ALL
SELECT id FROM t2;





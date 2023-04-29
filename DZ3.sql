USE DZ1;

CREATE TABLE salespeople (
snum INT NOT NULL PRIMARY KEY,
sname VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
comm VARCHAR(3) NOT NULL
);

INSERT INTO salespeople(snum, sname, city, comm)
VALUES (1001, 'Peel', 'London', '.12'),
(1002, 'Serrers', 'San Jose', '.13'),
(1004, 'Motika','London', '.11'),
(1007, 'Rifkin', 'Barcelona', '.15'),
(1003, 'Axelrod', 'New York', '.10');

CREATE TABLE customers (
cnum INT NOT NULL PRIMARY KEY,
cname VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
rating INT NOT NULL,
snum INT NOT NULL
);

INSERT INTO customers(cnum, cname, city, rating, snum)
VALUES (2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu','San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);


CREATE TABLE orders1 (
onum INT NOT NULL PRIMARY KEY,
amt DOUBLE NOT NULL,
odate VARCHAR(20) NOT NULL,
cnum INT NOT NULL,
snum INT NOT NULL
);

INSERT INTO orders1(onum, amt, odate, cnum, snum)
VALUES (3001, 18.69, '10/03/1990', 2008, 1007),
(3003, 767.19, '10/03/1990', 2001, 1001),
(3002, 1900.10, '10/03/1990', 2007, 1004),
(3005, 5160.45, '10/03/1990', 2003, 1002),
(3006, 1098.16, '10/03/1990', 2008, 1007),
(3009, 1713.23, '10/04/1990', 200, 1002),
(3007, 75.75, '10/04/1990', 2004, 1002),
(3008, 4723.00, '10/05/1990', 2006, 1001),
(3010, 1309.95, '10/06/1990', 2004, 1002),
(3011, 9891.88, '10/06/1990', 2006, 1001);


/*
1.	 Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)
2.	 Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)
3.	 Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. (уникальные значения в  “snum“ “Продавцы”)
4*. 	Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE": (“заказчики”) https://dev.mysql.com/doc/refman/8.0/en/string-comparison-functions.html
5. 	Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt”  - сумма)
6.	Напишите запрос который выбрал бы наименьшую сумму заказа.
 (Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)
7. 	Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.
*/

-- 1
SELECT city, sname, snum, comm FROM salespeople;

-- 2
SELECT rating, cname
FROM customers
WHERE city IN ('San Jose');

-- 3
SELECT snum




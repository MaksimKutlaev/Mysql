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


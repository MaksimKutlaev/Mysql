-- Comment
# Comment
/*
Comment
Comment
*/

/*
1. Получить список информации по всем студентам
2. Получить список всех студентов с именем
3. Вывести имя и почту из таблички student
4. Выбрать студентов, имена которых наичнаются с буквы А
*/

-- Подключаемся к БД
USE lesson1;

-- 1
SELECT * FROM student;

-- 1.1
SELECT name FROM student;

-- 2
SELECT * FROM student
WHERE name = "Atom";

-- 3
SELECT name, phone_number FROM student;

-- 4
-- Like
-- % - любая подстрока; Galaxy S7, Galaxy S8s, Galaxy S10, Galaxy A5
-- LIKE 'Galaxy S%' -> Galaxy S7, Galaxy S8s, Galaxy S10

-- _ - одиночный символ
-- LIKE 'Galaxy S_' -> Galaxy S7

SELECT * FROM student
WHERE name LIKE '%A' OR name LIKE '_o_'; 
-- 2
USE DZ1;
SELECT product_name, manufactured FROM mobile_phone WHERE product_count>2;
-- 3
SELECT product_name FROM mobile_phone WHERE manufactured="Samsung";
-- 4
SELECT * FROM mobile_phone WHERE product_name LIKE 'Iphone%';
SELECT * FROM mobile_phone WHERE manufactured LIKE 'Samsung%';
SELECT * FROM mobile_phone WHERE product_name REGEXP '[0-9]';
SELECT * FROM mobile_phone WHERE product_name REGEXP '8';
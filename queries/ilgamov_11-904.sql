-- 1. Вывести все колонки
SELECT * FROM `groups`;
-- 2. Вывести только name
SELECT name FROM `groups`;
-- 3. Вывести с 4 по 6 строчку
SELECT * FROM `groups` 
limit 3,3;
-- 4. Отсортировать по name
SELECT * FROM `groups` 
ORDER by name;
-- 5. Вывести только id, name которых 11-901
SELECT id FROM `groups` 
WHERE name='11-901';
-- 6. Вывести только name, id которых меньше 6
SELECT name FROM `groups`
WHERE id < 6;
-- 7. Вывести всё в порядке убывания по id
SELECT * FROM `groups`
ORDER by id DESC;
-- 8. Вывести всё в порядке убывания по name, но в порядке возрастания по id
SELECT * FROM `groups`
ORDER by name DESC, id;
-- 9. Выбрать последний элемент
SELECT * FROM `groups`
ORDER by id DESC
limit 1;
-- 10. Выбрать все элементы, id которых больше 4 и, id которых меньше 8 или name равен 11-906
SELECT * FROM `groups`
WHERE id > 4 AND (id < 8 OR name='11-906')
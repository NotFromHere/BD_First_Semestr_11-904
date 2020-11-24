-- 1. Получить название типа кузова автомобиля и количество его повторений в бд
SELECT mydb.auto.body_type, count(mydb.auto.id_auto) from mydb.auto group by mydb.auto.body_type;
-- 2. Средний пробег всех авто
SELECT avg(mydb.auto.mileage) from mydb.auto;
-- 3. Самый старый автомобиль и самый новый из списка
SELECT min(mydb.auto.production_year), max(mydb.auto.production_year) from mydb.auto;
-- 4. Список имен и количество их повторений в порядке убывания
SELECT mydb.user.first_name, count(mydb.user.id_user) from mydb.user group by mydb.user.first_name order by count(mydb.user.id_user) desc;
-- 5. Средняя цена всех сервисов, где тип ниже 3
SELECT avg(mydb.additional_service.price) from mydb.additional_service where type_of_service < 'type3';
-- 6. Все пользователи у которых положительный баланс.
SELECT u.first_name, u.last_name, w.balance  from mydb.user u join mydb.wallet w  on u.id_user = w.user_wallet_id where w.balance > 0;
-- 7. Все пользователи у которых отрицательный баланс. (В порядке возрастания задолжности)
SELECT u.first_name, w.balance  from mydb.user u join mydb.wallet w  on u.id_user = w.user_wallet_id where w.balance < 0 order by w.balance Desc;
-- 8. Вывод всех пользователей, где максимально длинная фамилия
select * from mydb.user where LENGTH(last_name) = (select LENGTH(last_name) from mydb.user ORDER BY LENGTH(mydb.user.last_name) DESC LIMIT 1);
-- 9. Вывести имя, номер авто и адрес стоянки, где находиться авто владельца. Где статус заказа 1.
select u.first_name, a.number as number_auto, p.address AS address_parking from mydb.offer o join mydb.user u on u.id_user = o.landlord_id join mydb.auto a on a.id_auto = o.auto_id join mydb.parking p on p.parking_id = o.parking_id where o.status = 1;
-- 10. Вывод пользователей чей пробег на авто выше среднего.
SELECT u.first_name, a.mileage from mydb.auto a join mydb.offer o on a.id_auto = o.auto_id join mydb.user u on u.id_user = o.landlord_id where a.mileage > (select AVG(mydb.auto.mileage) FROM mydb.auto);
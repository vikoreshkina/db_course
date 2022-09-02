-- 1 Посмотреть все доступные БД 
SHOW DATABASES;
-- 2 подключиться к БД "world" 
use world;
-- 3 получить все данные из таблицы city
select * from city;
-- 4 вывести только столбцы с названием стран и населением из таблицы city
select Name, Population from city;
-- 5 получить уникальные значения поля Language из таблицы countrylanguage
select distinct Language from countrylanguage;
-- 6 вывести города, где население превышает 5 000 000 человек из таблицы city
select Name, Population from city where Population > 5000;
-- 7 вывести информацию о конкретном городе - "Лондон" из таблицы city
select * from city where Name = "London";
-- 8 узнать все официальные языки, где процент говорящих выше 80 % из таблицы countrylanguage 
select Language, Percentage, IsOfficial from countrylanguage where Percentage > 80 and IsOfficial = "T";
-- 9 узнать все города из Австралии или из России из таблицы city 
select * from country where Name = "Australia" or "Russia"; -- сначала узнаем коды Австралии и России из таблицы country
select * from city where CountryCode = "AUS" or "RU"; -- делаем выборку городов по коду страны из таблицы city
-- 10 узнать все города, которые НЕ находятся в Китае из таблицы city 
select * from country where Name = "China"; -- узнаем код Китая из таблицы country
select * from city where CountryCode != "CHN";
-- 11 узнать данные, где язык = Английский или код страны НЕ “CAN” и процент говорящих НИ меньше 50 из таблицы countrylanguage 
select * from countrylanguage where (Language = "English" or CountryCode != "CAN") and Percentage >= "50";
-- 12 получить данные только определенных языков: Русский и Английский из таблицы countrylanguage 
select * from countrylanguage where Language IN ("English", "Russian");
-- 13 получить все города, населения которых от 1 000 000 до 5 000 000 из таблицы city 
select * from city where Population BETWEEN 1000000 and 5000000;
-- 14 узнаем все страны с буквами "St" в названии
select * from country where Name LIKE "%East%";
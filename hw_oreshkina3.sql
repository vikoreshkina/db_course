-- Задание 6
SELECT name FROM Company WHERE Company.id
IN (SELECT company from Trip WHERE Trip.plane = "Boeing");

-- Задание 14 (добавила сортировку по убыванию просто для тренировки)
SELECT town_to FROM Trip 
JOIN Pass_in_trip
ON Trip.id = Pass_in_trip.trip 
JOIN Passenger
ON Pass_in_trip.passenger = Passenger.id 
WHERE name = "Bruce Willis" Order BY town_to DESC;

-- Задание 29 (добавила сортировку по возрастанию)
SELECT name from Passenger
JOIN Pass_in_trip
ON Passenger.id = Pass_in_trip.passenger 
JOIN Trip
ON Pass_in_trip.trip = Trip.id
WHERE town_to = "Moscow" and plane = "TU-134" GROUP BY name ORDER BY name;
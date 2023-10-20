SELECT city_name, population, latitude
FROM Cities
WHERE population > 2000000 AND latitude > 0;

SELECT username, age
FROM Users
WHERE age > 30
ORDER BY age ASC;

SELECT sender_id, COUNT(*) AS message_count
FROM Messages
GROUP BY sender_id;

SELECT Users.username, Cities.city_name
FROM Users
JOIN Cities ON Users.city_id = Cities.city_id
ORDER BY Users.username ASC;

SELECT message_text
FROM Messages
JOIN Users ON Messages.sender_id = Users.user_id
WHERE (Users.username = 'John' AND Messages.receiver_id = (SELECT user_id FROM Users WHERE username = 'Alice'))
   OR (Users.username = 'Alice' AND Messages.receiver_id = (SELECT user_id FROM Users WHERE username = 'John'));
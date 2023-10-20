CREATE TABLE Cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(255),
    country VARCHAR(255),
    population INT,
    latitude FLOAT,
    longitude FLOAT,
    timezone VARCHAR(255)
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    gender VARCHAR(10),
    age INT,
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);

CREATE TABLE Messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    message_text VARCHAR(255),
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);

INSERT INTO Cities (city_id, city_name, country, population, latitude, longitude, timezone)
VALUES 
    (1, 'New York', 'United States', 8537673, 40.7128, -74.0060, 'America/New_York'),
    (2, 'London', 'United Kingdom', 8982000, 51.5074, -0.1278, 'Europe/London'),
    (3, 'Paris', 'France', 2140526, 48.8566, 2.3522, 'Europe/Paris'),
    (4, 'Tokyo', 'Japan', 13929286, 35.6895, 139.6917, 'Asia/Tokyo'),
    (5, 'Sydney', 'Australia', 5312000, -33.8651, 151.2099, 'Australia/Sydney');

INSERT INTO Users (user_id, username, email, password, gender, age, city_id)
VALUES 
    (1, 'John', 'john@example.com', 'password123', 'Male', 25, 1),
    (2, 'Alice', 'alice@example.com', 'password456', 'Female', 30, 2),
    (3, 'Mike', 'mike@example.com', 'password789', 'Male', 35, 3),
    (4, 'Sarah', 'sarah@example.com', 'passwordabc', 'Female', 28, 1),
    (5, 'David', 'david@example.com', 'passworddef', 'Male', 32, 2);

INSERT INTO Messages (message_id, sender_id, receiver_id, message_text)
VALUES 
    (1, 1, 2, 'Hello Alice!'),
    (2, 2, 1, 'Hi John! How are you?'),
    (3, 3, 4, 'Hey Sarah! Long time no see.'),
    (4, 4, 3, 'Bonjour Mike! Comment ça va?'),
    (5, 5, 1, 'Hey John! Let''s catch up sometime.');
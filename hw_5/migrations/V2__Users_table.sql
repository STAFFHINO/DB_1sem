CREATE TABLE Users (
    ID SERIAL PRIMARY KEY,
    Lastname VARCHAR(255) NOT NULL,
    Firstname VARCHAR(255) NOT NULL,
    Patronymic VARCHAR(255),
    BirthDate DATE NOT NULL,
    Profession VARCHAR(255),
    Nationality VARCHAR(255),
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(255) UNIQUE
);
-- Create the database
CREATE DATABASE friends_database;

-- Use the database
USE friends_database;

-- Create the 'friend' table
CREATE TABLE friend (
    friend_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    years_know INT, 
    height INT,
    city VARCHAR(25),
    PRIMARY KEY(friend_id)
);

-- Insert data into the 'friend' table
INSERT INTO friend(name, years_know, height, city) VALUES
('Zain', 2017, 6, 'Brampton'),
('Jawad', 2017, 6, 'Kitchener-Waterloo'), -- Updated city
('Howard', 2017, 5, 'Kitchener-Waterloo'), -- Updated city
('Shayan', 2022, 6, 'Kitchener-Waterloo'), -- Updated city
('Varun', 2004, 6, 'Ottawa'),
('Priya', 2004, 5, 'Mississauga'),
('Srishti', 2004, 5, 'Hamilton'),
('Dev', 2023, 6, 'Kitchener-Waterloo'); -- Updated city

-- Create the 'favorite_artist' table
CREATE TABLE favorite_artist (
    friend_id INT,
    artist_name VARCHAR(25),
    FOREIGN KEY (friend_id) REFERENCES friend(friend_id)
);

-- Insert data into the 'favorite_artist' table
INSERT INTO favorite_artist(friend_id, artist_name) VALUES
(1, 'Drake'),
(2, 'The Weeknd'),
(3, 'Nicki Minaj'),
(4, 'SZA'),
(5, 'The Weeknd'),
(6, 'Drake'),
(7, 'SZA'),
(8, 'Nicki Minaj');

-- desired salary
CREATE TABLE desired_salary (
    friend_id INT,
    annual_salary DECIMAL(10, 2),
    FOREIGN KEY (friend_id) REFERENCES friend(friend_id)
);


INSERT INTO desired_salary(friend_id, annual_salary) VALUES
(1, 75000.00),
(2, 85000.00),
(3, 72000.00),
(4, 95000.00),
(5, 80000.00),
(6, 90000.00),
(7, 72000.00),
(8, 78000.00);

select * from friends_database;
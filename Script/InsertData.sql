-- Insert data into Customer table
INSERT INTO Customer (customer_id, name, email, phone, address)
VALUES (1, 'John Smith', 'johnsmith@example.com', '555-1234', '123 Main St'),
(2, 'Jane Doe', 'janedoe@example.com', '555-5678', '456 Elm St'),
(3, 'Bob Johnson', 'bobjohnson@example.com', '555-9012', '789 Maple Ave'),
(4, 'Samantha Lee', 'samanthalee@example.com', '555-3456', '234 Oak Dr'),
(5, 'David Kim', 'davidkim@example.com', '555-7890', '567 Pine St'),
(6, 'Emily Chen', 'emilychen@example.com', '555-2345', '890 Cedar Rd'),
(7, 'Michael Davis', 'michaeldavis@example.com', '555-6789', '123 Cherry Ln'),
(8, 'Amanda Garcia', 'amandagarcia@example.com', '555-0123', '456 Birch Blvd'),
(9, 'Jason Nguyen', 'jasonnguyen@example.com', '555-4567', '789 Poplar Ave'),
(10, 'Stephanie Hernandez', 'stephaniehernandez@example.com', '555-8901', '234 Walnut St');

-- Insert data into Customer_Profile table
INSERT INTO Customer_Profile (customer_id, age, gender, favorite_genre)
VALUES (1, 30, 'Male', 'Rock'),
(2, 25, 'Female', 'Pop'),
(3, 40, 'Male', 'Country'),
(4, 28, 'Female', 'Hip-Hop'),
(5, 35, 'Male', 'Rock'),
(6, 22, 'Female', 'Pop'),
(7, 45, 'Male', 'Country'),
(8, 27, 'Female', 'Hip-Hop'),
(9, 32, 'Male', 'Rock'),
(10, 24, 'Female', 'Pop');

-- Insert data into Karaoke_Room table
INSERT INTO Karaoke_Room (karaoke_room_id, name, capacity, price_per_hour)
VALUES (1, 'Room 1', 4, 20.00),
(2, 'Room 2', 6, 30.00),
(3, 'Room 3', 8, 40.00),
(4, 'Room 4', 10, 50.00),
(5, 'Room 5', 12, 60.00),
(6, 'Room 6', 4, 20.00),
(7, 'Room 7', 6, 30.00),
(8, 'Room 8', 8, 40.00),
(9, 'Room 9', 10, 50.00),
(10, 'Room 10', 12, 60.00);

-- Insert data into Booking table
INSERT INTO Booking (booking_id, customer_id, karaoke_room_id, start_time, end_time)
VALUES (1, 1, 1, '2023-04-17 18:00:00', '2023-04-17 19:00:00'),
(2, 2, 2, '2023-04-17 20:00:00', '2023-04-17 22:00:00'),
(3, 3, 3, '2023-04-18 15:00:00', '2023-04-18 17:00:00'),
(4, 4, 4, '2023-04-19 14:00:00', '2023-04-19 16:00:00'),
(5, 5, 5, '2023-04-20 19:00:00', '2023-04-20 21:00:00'),
(6, 6, 6, '2023-04-21 12:00:00', '2023-04-21 14:00:00'),
(7, 7, 7, '2023-04-22 16:00:00', '2023-04-22 18:00:00'),
(8, 8, 8, '2023-04-23 13:00:00', '2023-04-23 15:00:00'),
(9, 9, 9, '2023-04-24 17:00:00', '2023-04-24 19:00:00'),
(10, 10, 10, '2023-04-25 20:00:00', '2023-04-25 22:00:00');

-- Insert data into Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_time)
VALUES (1, 1, 20.00, '2023-04-17 19:00:00'),
(2, 2, 60.00, '2023-04-17 22:00:00'),
(3, 3, 80.00, '2023-04-18 17:00:00'),
(4, 4, 100.00, '2023-04-19 16:00:00'),
(5, 5, 120.00, '2023-04-20 21:00:00'),
(6, 6, 40.00, '2023-04-21 14:00:00'),
(7, 7, 60.00, '2023-04-22 18:00:00'),
(8, 8, 80.00, '2023-04-23 15:00:00'),
(9, 9, 100.00, '2023-04-24 19:00:00'),
(10, 10, 120.00, '2023-04-25 22:00:00');

-- Insert data into Staff table
INSERT INTO Staff (staff_id, name, position)
VALUES (1, 'Alex Brown', 'Manager'),
(2, 'Sarah Johnson', 'KJ'),
(3, 'Chris Davis', 'Cleaner'),
(4, 'Ava Martinez', 'Technician'),
(5, 'Ethan Wilson', 'Security'),
(6, 'Emma Rodriguez', 'Server'),
(7, 'David Garcia', 'Bartender'),
(8, 'Olivia Martinez', 'Waitress'),
(9, 'James Thompson', 'Security'),
(10, 'Isabella Lee', 'Chef');

-- Insert data into Booking_Staff table
INSERT INTO Booking_Staff (booking_id, staff_id)
VALUES (1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 3),
(4, 2),
(5, 3),
(6, 1),
(7, 2),
(8, 3);

-- Insert data into Music table
INSERT INTO Music (music_id, title, artist, genre, duration)
VALUES (1, 'Bohemian Rhapsody', 'Queen', 'Rock', '00:05:55'),
(2, 'Stairway to Heaven', 'Led Zeppelin', 'Rock', '00:08:02'),
(3, 'Hotel California', 'Eagles', 'Rock', '00:06:31'),
(4, 'Like a Rolling Stone', 'Bob Dylan', 'Rock', '00:06:13'),
(5, 'I Will Always Love You', 'Whitney Houston', 'Pop', '00:04:31'),
(6, 'Billie Jean', 'Michael Jackson', 'Pop', '00:04:54'),
(7, 'Thriller', 'Michael Jackson', 'Pop', '00:05:57'),
(8, 'Smooth', 'Santana', 'Latin', '00:04:55'),
(9, 'Despacito', 'Luis Fonsi ft. Daddy Yankee', 'Latin', '00:03:47'),
(10, 'La Bamba', 'Ritchie Valens', 'Latin', '00:02:06');

-- Insert data into Booking_Music table
INSERT INTO Booking_Music (booking_id, music_id)
VALUES (1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10);

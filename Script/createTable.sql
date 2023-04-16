CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(20),
  address VARCHAR(100)
);

CREATE TABLE Customer_Profile (
  customer_id INT PRIMARY KEY,
  age INT,
  gender VARCHAR(10),
  favorite_genre VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Karaoke_Room (
  karaoke_room_id INT PRIMARY KEY,
  name VARCHAR(50),
  capacity INT,
  price_per_hour DECIMAL(10,2)
);

CREATE TABLE Booking (
  booking_id INT PRIMARY KEY,
  customer_id INT,
  karaoke_room_id INT,
  start_time DATETIME,
  end_time DATETIME,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (karaoke_room_id) REFERENCES Karaoke_Room(karaoke_room_id)
);

CREATE TABLE Payment (
  payment_id INT PRIMARY KEY,
  booking_id INT,
  amount DECIMAL(10,2),
  payment_time DATETIME,
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

CREATE TABLE Staff (
  staff_id INT PRIMARY KEY,
  name VARCHAR(50),
  position VARCHAR(50)
);

CREATE TABLE Booking_Staff (
  booking_id INT,
  staff_id INT,
  created_at TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (booking_id, staff_id),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
  FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE Music (
  music_id INT PRIMARY KEY,
  title VARCHAR(50),
  artist VARCHAR(50),
  genre VARCHAR(50),
  duration TIME
);

CREATE TABLE Booking_Music (
  booking_id INT,
  music_id INT,
  created_at TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (booking_id, music_id),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
  FOREIGN KEY (music_id) REFERENCES Music(music_id)
);

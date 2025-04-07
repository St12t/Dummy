--  Airline
INSERT INTO Airline (name) VALUES ('Jet Blue');

--  Airport
INSERT INTO Airport (code, name, city, country, airport_type, num_of_terminals) 
VALUES 
('JFK', 'John F. Kennedy International Airport', 'New York City', 'USA', 'International', 6),
('PVG', 'Shanghai Pudong International Airport', 'Shanghai', 'China', 'International', 4);

-- Customer
INSERT INTO Customer (
    email, first_name, last_name, date_of_birth, password,
    address_building_number, address_street_name, address_city, address_state, address_zip_code,
    passport_number, passport_expiration, passport_country
) VALUES 
('john.doe@example.com', 'John', 'Doe', '1980-01-15', 'password123', 
    '123', 'Liberty Street', 'New York', 'NY', '10005', 
    'A1234567', '2035-01-01', 'USA'),
('jane.smith@example.com', 'Jane', 'Smith', '1990-02-20', 'password456', 
    '456', 'Market Street', 'San Francisco', 'CA', '94105', 
    'B2345678', '2036-02-01', 'USA'),
('alice.jones@example.com', 'Alice', 'Jones', '1985-03-30', 'password789', 
    '789', 'Main Street', 'Chicago', 'IL', '60601', 
    'C3456789', '2037-03-01', 'USA');

-- Airplane
INSERT INTO Airplane (
    airline_name, id, num_seats, manufacturer, model_num, manufacturing_date, age
) VALUES 
('Jet Blue', 1, 150, 'Airbus', 320, '2020-01-01', 5),
('Jet Blue', 2, 200, 'Boeing', 737, '2021-02-01', 4),
('Jet Blue', 3, 180, 'Airbus', 321, '2022-03-01', 3);

-- AirlineStaff
INSERT INTO AirlineStaff (
    username, password, first_name, last_name, date_of_birth, airline_name
) VALUES 
('staff1', 'staffpass', 'Bob', 'Brown', '1975-04-15', 'Jet Blue');

-- Flight
INSERT INTO Flight (
    flight_id, airline_name, flight_number, departure_date_time, departure_airport,
    arrival_airport, arrival_date_time, base_price, airplane_id, status
) VALUES 
(1, 'Jet Blue', 101, '2025-04-15 08:00:00', 'JFK', 'PVG', '2025-04-16 08:00:00', 500.00, 1, 'On-time'),
(2, 'Jet Blue', 102, '2025-04-15 09:00:00', 'PVG', 'JFK', '2025-04-16 09:00:00', 550.00, 2, 'Delayed');

-- Ticket
INSERT INTO Ticket (
    id, customer_email, flight_id, sold_price,
    payment_info_card_type, payment_info_card_number, 
    payment_info_name_on_card, payment_info_expiration_date, purchase_date_time
) VALUES 
(1, 'john.doe@example.com', 1, 500.00, 
    'Visa', '1234567890123456', 'John Doe', '2026-04-01', '2025-04-01 10:00:00');

-- Purchase
INSERT INTO Purchase (
    ticket_id, customer_email, sold_price, purchase_date_time,
    card_type, card_number, expiration_date, name_on_card
) VALUES 
(1, 'john.doe@example.com', 500.00, '2025-04-01 10:00:00',
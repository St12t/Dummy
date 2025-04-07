-- a
SELECT * FROM Flight
WHERE departure_date_time > CURRENT_TIMESTAMP;

-- flight_id	airline_name	flight_number	departure_date_time	departure_airport	arrival_airport	arrival_date_time	base_price	airplane_id	status
-- 1	Jet Blue	101	2025-04-15 08:00:00	JFK	PVG	2025-04-16 08:00:00	500.00	1	On-time
-- 2	Jet Blue	102	2025-04-15 09:00:00	PVG	JFK	2025-04-16 09:00:00	550.00	2	Delayed


-- b
SELECT * FROM Flight
WHERE status = 'Delayed';

-- flight_id	airline_name	flight_number	departure_date_time	departure_airport	arrival_airport	arrival_date_time	base_price	airplane_id	status
-- 2	Jet Blue	102	2025-04-15 09:00:00	PVG	JFK	2025-04-16 09:00:00	550.00	2	Delayed

-- c
SELECT DISTINCT c.first_name, c.last_name
FROM Customer c
JOIN Ticket t ON c.email = t.customer_email;

-- John	Doe	

-- d
SELECT * FROM Airplane
WHERE airline_name = 'Jet Blue';

-- d
SELECT * FROM Airplane
WHERE airline_name = 'Jet Blue';

-- airline_name	id	num_seats	manufacturer	model_num	manufacturing_date	age
-- Jet Blue	1	150	Airbus	320	2020-01-01	5
-- Jet Blue	2	200	Boeing	737	2021-02-01	4
-- Jet Blue	3	180	Airbus	321	2022-03-01	3
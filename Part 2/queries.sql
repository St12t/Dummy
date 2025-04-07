-- a. Future flights
SELECT * FROM Flight
WHERE CONCAT(Depart_Date, ' ', Depart_Time) > CURRENT_TIMESTAMP;

--Airline_Name Flight_Num Depart_Date Depart_Time Arrival_Date Arrival_Time Base_Price Airplane_ID Departure_Airport Arrival_Airport Status
--Jet Blue 101 2025-04-15 08:00:00 2025-04-16 08:00:00 500.00 1 JFK PVG On-time
--Jet Blue 102 2025-04-15 09:00:00 2025-04-16 09:00:00 550.00 2 PVG JFK Delayed

-- b. Delayed flights
SELECT * FROM Flight
WHERE Status = 'Delayed';


--Full texts Airline_Name Flight_Num Depart_Date Depart_Time Arrival_Date Arrival_Time Base_Price Airplane_ID Departure_Airport Arrival_Airport Status

--Jet Blue 102 2025-04-15 09:00:00 2025-04-16 09:00:00 550.00 2 PVG JFK Delayed

-- c. Customers who bought tickets
SELECT DISTINCT c.First_Name, c.Last_Name
FROM Customer c
JOIN Purchase p ON c.Email = p.Customer_Email;

--First_Name Last_Name
-- John Doe


-- d. Airplanes owned by Jet Blue
SELECT * FROM Airplane
WHERE Airline_Name = 'Jet Blue';


-- Airline_Name ID Num_Of_Seats Manufactures Model_Num Manufacturing_Date
-- Jet Blue 1 150 Airbus A320 2020-01-01

-- Jet Blue 2 200 Boeing 737 2021-02-01

-- Jet Blue 3 180 Airbus A321 2022-03-01
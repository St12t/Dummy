CREATE TABLE Airport (
    Code CHAR(3) PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    Num_Of_Terminals INT,
    Type VARCHAR(20)
);

CREATE TABLE Airline (
    Name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Airplane (
    Airline_Name VARCHAR(50),
    ID INT,
    Num_Of_Seats INT,
    Manufactures VARCHAR(50),
    Model_Num VARCHAR(20),
    Manufacturing_Date DATE,
    PRIMARY KEY (Airline_Name, ID),
    FOREIGN KEY (Airline_Name) REFERENCES Airline(Name)
);


CREATE TABLE Flight (
    Airline_Name VARCHAR(50),
    Flight_Num INT,
    Depart_Date DATE,
    Depart_Time TIME,
    Arrival_Date DATE,
    Arrival_Time TIME,
    Base_Price DECIMAL(8,2),
    Airplane_ID INT,
    Departure_Airport CHAR(3),
    Arrival_Airport CHAR(3),
    Status VARCHAR(20),
    PRIMARY KEY (Airline_Name, Flight_Num, Depart_Date, Depart_Time),
    FOREIGN KEY (Airline_Name) REFERENCES Airline(Name),
    FOREIGN KEY (Airline_Name, Airplane_ID) REFERENCES Airplane(Airline_Name, ID),
    FOREIGN KEY (Departure_Airport) REFERENCES Airport(Code),
    FOREIGN KEY (Arrival_Airport) REFERENCES Airport(Code)
);



CREATE TABLE Customer (
    Email VARCHAR(100) PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Password VARCHAR(64),
    Building_Num VARCHAR(10),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(20),
    Zip VARCHAR(10),
    Passport_Num VARCHAR(20),
    Passport_Exp DATE,
    Passport_Country VARCHAR(50),
    Date_Of_Birth DATE
);

CREATE TABLE Customer_Phone (
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    PRIMARY KEY (Email, Phone_Number),
    FOREIGN KEY (Email) REFERENCES Customer(Email)
);

CREATE TABLE Airline_Staff (
    Username VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(64),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_Of_Birth DATE,
    Airline_Name VARCHAR(50),
    FOREIGN KEY (Airline_Name) REFERENCES Airline(Name)
);

CREATE TABLE Airline_Staff_Phone (
    Username VARCHAR(50),
    Phone_Number VARCHAR(15),
    PRIMARY KEY (Username, Phone_Number),
    FOREIGN KEY (Username) REFERENCES Airline_Staff(Username)
);

CREATE TABLE Airline_Staff_Email (
    Username VARCHAR(50),
    Email VARCHAR(100),
    PRIMARY KEY (Username, Email),
    FOREIGN KEY (Username) REFERENCES Airline_Staff(Username)
);

CREATE TABLE Ticket (
    Ticket_ID INT PRIMARY KEY,
    Airline_Name VARCHAR(50),
    Flight_Num INT,
    Depart_Date DATE,
    Depart_Time TIME,
    Sold_Price DECIMAL(8,2),
    FOREIGN KEY (Airline_Name, Flight_Num, Depart_Date, Depart_Time)
        REFERENCES Flight(Airline_Name, Flight_Num, Depart_Date, Depart_Time)
);

CREATE TABLE Purchase (
    Ticket_ID INT,
    Customer_Email VARCHAR(100),
    Purchase_Date DATE,
    Purchase_Time TIME,
    Card_Num VARCHAR(20),
    Exp_Date DATE,
    Name_On_Card VARCHAR(100),
    Card_Type VARCHAR(10),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    PRIMARY KEY (Ticket_ID),
    FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID),
    FOREIGN KEY (Customer_Email) REFERENCES Customer(Email)
);

CREATE TABLE Ratings (
    Customer_Email VARCHAR(100),
    Airline_Name VARCHAR(50),
    Flight_Num INT,
    Depart_Date DATE,
    Depart_Time TIME,
    Comment TEXT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    PRIMARY KEY (Customer_Email, Airline_Name, Flight_Num, Depart_Date, Depart_Time),
    FOREIGN KEY (Customer_Email) REFERENCES Customer(Email),
    FOREIGN KEY (Airline_Name, Flight_Num, Depart_Date, Depart_Time)
        REFERENCES Flight(Airline_Name, Flight_Num, Depart_Date, Depart_Time)
);

CREATE TABLE Maintenance (
    Airline_Name VARCHAR(50),
    Airplane_ID INT,
    Start_Date DATE,
    Start_Time TIME,
    End_Date DATE,
    End_Time TIME,
    Description TEXT,
    PRIMARY KEY (Airline_Name, Airplane_ID, Start_Date, Start_Time),
    FOREIGN KEY (Airline_Name, Airplane_ID)
        REFERENCES Airplane(Airline_Name, ID)
);
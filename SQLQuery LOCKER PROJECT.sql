CREATE DATABASE Locker;
USE locker

DROP TABLE USERS
CREATE TABLE USERS(
USERS_ID INT PRIMARY KEY,
USERS_NAME VARCHAR (50) NOT NULL ,
Email VARCHAR (50) NOT NULL ,
PHONE_NUMBER VARCHAR (20) NOT NULL ,
ADREES VARCHAR (50) NOT NULL ,
CITY VARCHAR (50) NOT NULL ,
STREET VARCHAR (50) NOT NULL ,
COUNTRY VARCHAR (50) NOT NULL ,
);

CREATE TABLE ADMINE (
ADMINE_ID INT PRIMARY KEY ,
Password  VARCHAR (20)  , 
ADMINE_NAME VARCHAR (20) ,
Email VARCHAR (50) NOT NULL ,
PHONE_NUMBER VARCHAR (20) NOT NULL , 
age int check(age beTWEEN 17 and  30) ,
GENDER CHAR(1) CHECK ((GENDER='F'  OR GENDER='M'))
);

CREATE TABLE LOCKER (
LOCKER_ID INT PRIMARY KEY ,
ADREES VARCHAR (50) NOT NULL ,
PASSWORD VARCHAR (100) , 
City VARCHAR(50),
Street VARCHAR(50),
Country VARCHAR(50),
Capacity INT NOT NULL , 
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    USERS_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Quantity INT,
    Pick_Up VARCHAR(100),
    
    FOREIGN KEY (USERS_ID) REFERENCES Users(USERS_ID)
);

CREATE TABLE Shipment (
    Shipment_ID INT PRIMARY KEY IDENTITY(1,1),
    Order_ID INT NOT NULL,
    Shipment_Date DATE,
    Order_Number VARCHAR(50),

    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

CREATE TABLE Delivery_Company (
    Delivery_Company_ID INT PRIMARY KEY IDENTITY(1,1),
    Delivery_Name VARCHAR(150),
    Contact VARCHAR(50),
    Price_Rate DECIMAL(10,2),
    Zone VARCHAR(50),
    Additional_Rate_Per_Kg DECIMAL(10,2),
    Additional_Charge DECIMAL(10,2)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY IDENTITY(1,1),
    Order_ID INT NOT NULL,
    Payment_Type VARCHAR(50),
    Collect_Point VARCHAR(100),
    Amount DECIMAL(10,2),

    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

CREATE TABLE Discount (
    Discount_ID INT PRIMARY KEY IDENTITY(1,1),
    Discount_Type VARCHAR(50),
    Discount_Code VARCHAR(50),
    Discount_Amount DECIMAL(10,2)
);

CREATE TABLE Publisher (
    Publisher_ID INT PRIMARY KEY IDENTITY(1,1),
    Publisher_Name VARCHAR(150),
    Country VARCHAR(50)
);

CREATE TABLE Seller (
    Seller_ID INT PRIMARY KEY IDENTITY(1,1),
    Tax_Number VARCHAR(50),
    Sales_History TEXT
);

CREATE TABLE Book (
    Book_ID INT PRIMARY KEY IDENTITY(1,1),
    Publisher_ID INT,
    Seller_ID INT,
    Title VARCHAR(200),
    Author VARCHAR(150),
    Nationality VARCHAR(50),
    Publishing_Year INT,
    Price DECIMAL(10,2),
    Category VARCHAR(50),
    Description TEXT,
    Sub_Title VARCHAR(200),

    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID),
    FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID)
);

CREATE TABLE Bank (
    Bank_ID INT PRIMARY KEY IDENTITY(1,1),
    Bank_Name VARCHAR(100),
    Bank_City VARCHAR(50),
    Card_Number VARCHAR(50),
    Card_Name VARCHAR(100),
    CVV INT,
    Expiry_Date DATE
);


INSERT INTO USERS (USERS_ID, USERS_NAME, Email, PHONE_NUMBER, ADREES,CITY, STREET, COUNTRY)
VALUES (1, 'Tom B. Erichsen', 'tom@example.com', 263131, 19, 'MOKHGGFH' , 'ZMALIK','CAIRO' )
        (2, 'Tom B. Erichsen', 'tom@example.com', 263131, 19, 'MOKHGGFH' , 'ZMALIK','CAIRO' );


SELECT * FROM USERS

INSERT INTO USERS (USERS_ID, USERS_NAME, Email, PHONE_NUMBER, ADREES, CITY, STREET, COUNTRY)
VALUES 
(5, 'Tom B. Erichsen', 'tom@example.com', '263131', 'MOKHGGFH', 'ZMALIK', 'STREET 19', 'CAIRO'),
(6, 'Tom B. Erichsen', 'tom@example.com', '263131', 'MOKHGGFH', 'ZMALIK', 'STREET 20', 'CAIRO');

ALTER TABLE USER DROP COULME email 

TRUNCATE TABLE USERS;

-- CREATING TABLE
CREATE TABLE Persons 
(
    PersonID INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR (255),
    City VARCHAR (255)

);

-- Show Table
SHOW TABLES;

-- Describe Table
DESC Persons;

-- Truncate TABLE
Truncate TABLE Persons;

-- DROP TABLE 
DROP TABLE Persons;

-- ALTER TABLE ADD COLUMN 
ALTER TABLE Persons
ADD Email VARCHAR(255);

-- ALTER TABLE DROP COLUMN 
ALTER TABLE Persons
DROP Email;

-- CHANGING Datatype
ALTER TABLE Persons
ALTER COLUMN FirstName VARCHAR(200);

-- NOT NULL 
ALTER TABLE Persons
MODIFY PersonID int NOT NULL;

-- UNIQUE
ALTER TABLE Persons
ADD UNIQUE (PersonID);

-- Droping UNIQUE
ALTER TABLE Persons

-- ADDING PK
CREATE TABLE Persons2
(
    PersonID INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR (255),
    City VARCHAR (255),
    Age int,
    CONSTRAINT Primary_Person PRIMARY KEY (PersonID, LastName)
);

-- Removing PK
ALTER TABLE Persons2
DROP CONSTRAINT Primary_Person(PersonID, LastName);

-- FOREIGN KEY 
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- CHECK
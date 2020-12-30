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

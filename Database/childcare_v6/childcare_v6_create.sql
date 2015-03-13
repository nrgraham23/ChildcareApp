-- Created by Vertabelo (http://vertabelo.com)
-- Script type: create
-- Scope: [tables, references, sequences, views, procedures]
-- Generated at Fri Mar 13 21:45:45 UTC 2015



-- tables
-- Table: Administrator
CREATE TABLE Administrator (
    AdministratorUN varchar(50) NOT NULL  PRIMARY KEY,
    AdministratorPW varchar(20) NOT NULL,
    AccessLevel varchar(1) NOT NULL,
    AdministratorEmail varchar(50) NOT NULL
);

-- Table: AllowedConnections
CREATE TABLE AllowedConnections (
    Allowance_ID varchar(6) NOT NULL  PRIMARY KEY,
    Guardian_ID varchar(6) NOT NULL,
    Child_ID varchar(6) NOT NULL,
    Family_ID varchar(6) NOT NULL,
    FOREIGN KEY (Guardian_ID) REFERENCES Guardian (Guardian_ID),
    FOREIGN KEY (Child_ID) REFERENCES Child (Child_ID),
    FOREIGN KEY (Family_ID) REFERENCES Family (Family_ID)
);

-- Table: ApplicationSettings
CREATE TABLE ApplicationSettings (
    SettingID integer NOT NULL  PRIMARY KEY,
    SettingName varchar(20) NOT NULL,
    SettingValue varchar(10) NOT NULL
);

-- Table: Child
CREATE TABLE Child (
    Child_ID varchar(6) NOT NULL  PRIMARY KEY,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Birthday date NOT NULL,
    Allergies varchar(200),
    Medical varchar(200),
    PhotoLocation varchar(200) NOT NULL,
    ChildDeletionDate date
);

-- Table: ChildcareTransaction
CREATE TABLE ChildcareTransaction (
    ChildcareTransaction_ID varchar(10) NOT NULL  PRIMARY KEY,
    Event_ID varchar(6) NOT NULL,
    Allowance_ID varchar(6) NOT NULL,
    TransactionDate date NOT NULL,
    CheckedIn datetime NOT NULL,
    CheckedOut datetime,
    TransactionTotal float,
    FOREIGN KEY (Allowance_ID) REFERENCES AllowedConnections (Allowance_ID),
    FOREIGN KEY (Event_ID) REFERENCES EventData (Event_ID)
);

-- Table: EventData
CREATE TABLE EventData (
    Event_ID varchar(6) NOT NULL  PRIMARY KEY,
    EventName varchar(50) NOT NULL,
    HourlyPrice float,
    HourlyDiscount float,
    DailyPrice float,
    DailyDiscount float,
    EventMonth int,
    EventDay int,
    EventWeekday varchar(10),
    EventDeletionDate date
);

-- Table: Family
CREATE TABLE Family (
    Family_ID varchar(6) NOT NULL  PRIMARY KEY,
    FamilyTotal float
);

-- Table: Guardian
CREATE TABLE Guardian (
    Guardian_ID varchar(6) NOT NULL  PRIMARY KEY,
    GuardianPIN varchar(4) NOT NULL,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Phone varchar(15) NOT NULL,
    Email varchar(50),
    Address1 varchar(50) NOT NULL,
    Address2 varchar(50),
    City varchar(50) NOT NULL,
    StateAbrv varchar(2) NOT NULL,
    Zip varchar(10) NOT NULL,
    PhotoLocation varchar(200) NOT NULL,
    GuardianDeletionDate date
);

-- Table: OperatingHours
CREATE TABLE OperatingHours (
    OperatingWeekday varchar(10) NOT NULL  PRIMARY KEY,
    Opening datetime NOT NULL,
    Closing datetime NOT NULL
);





-- End of file.


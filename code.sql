create database Library_management
USE library_management
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    BirthDate DATE,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    bookname VARCHAR(100),
    Author VARCHAR(100),
    Availability ENUM('Available', 'Borrowed') DEFAULT 'Available',
    Cost DECIMAL(10, 2)
);
CREATE TABLE BorrowingRecords (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    BookID INT,
    StaffID INT,
    DueDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StaffID) REFERENCES LibraryStaff(StaffID)
);

CREATE TABLE LibraryStaff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

drop table if exists BorrowingRecords

INSERT INTO Users (Name, BirthDate, PhoneNumber, Email)
VALUES 
('Alice John', '1995-07-10', '1234567890', 'alice@outlook.com'),
('Bob', '1990-05-15', '9876543210', 'bob@gmail.com');

INSERT INTO Books (bookname, Author, Availability, Cost)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Available', 399.99),
('To Kill a Mockingbird', 'Harper Lee', 'Available', 299.99),
('1984', 'George Orwell', 'Borrowed', 499.50);

INSERT INTO LibraryStaff (Name, PhoneNumber, Email)
VALUES 
('Emma Stones', '9995551234', 'emmastones@library.com'),
('John Doe', '8884445678', 'johndoe@library.com');

INSERT INTO BorrowingRecords (UserID, BookID, StaffID, DueDate)
VALUES 
(1, 3, 1, '2025-03-25'),
(2, 1, 2, '2025-03-30');

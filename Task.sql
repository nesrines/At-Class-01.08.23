CREATE DATABASE [Library]

USE [Library]

CREATE TABLE Books (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	Author NVARCHAR(50) NOT NULL,
	Price FLOAT(10) NOT NULL CHECK(Price > 0),
	[Count] INT NOT NULL CHECK([Count] >= 0)
)

INSERT INTO Books VALUES
('Book1', 'Author1', 24.99, 23),
('Book2', 'Author2', 13.87, 5),
('Book3', 'Author1', 12.50, 32),
('Book3', 'Author1', 15.50, 32),
('Book4', 'Author2', 15.49, 32),
('Book5', 'NilgunB', 58.50, 32),
('Book6', 'NilgunB', 72.60, 32),
('Book7', 'NilgunB', 67.89, 32)

SELECT * FROM Books WHERE
Price = (SELECT MAX(Price) FROM Books)

SELECT Author, COUNT(Id) FROM Books
GROUP BY (Author)
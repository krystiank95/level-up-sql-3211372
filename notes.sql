-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;

CREATE TABLE list
(CustomerID INT, 
guests INT);

SELECT * FROM Dishes
ORDER BY price;

select * from Dishes
where 
type = 'Appetizer' 
or type = 'Beverage'
ORDER BY Type;

select * from Dishes
where type is not 'Beverage'
ORDER BY type;

INSERT INTO Customers 
(FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES ('Anna', 'Smith', 'asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '(555) 555-1212', ' July 21, 1973')

UPDATE Customers
SET Address ='74 Pine St.',
City = 'New York', 
State = 'NY'
WHERE CustomerID = 26;

UPDATE Customers
SET Birthday ='1973-07-21'
WHERE CustomerID = 101;

select * from Customers
where CustomerID = '101'
or CustomerID = '26'

select * from Customers
where FirstName = 'Norby'

select * from Reservations
where CustomerID = '64'

DELETE FROM Reservations
WHERE ReservationID = '2000'

SELECT * FROM Customers
WHERE EMAIL = 'atapley2j@kinetecoinc.com'
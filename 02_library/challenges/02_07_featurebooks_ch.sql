-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT * FROM Loans WHERE LoanDate is null

select * from Books b 
inner join Loans l on b.BookID = l.BookID
where Published >='1890' and
 Published <='1899' 
 and 
  (BookID NOT IN 
  (SELECT BookID 
  FROM Loans 
  WHERE ReturnedDate IS NULL)) 
 order by title
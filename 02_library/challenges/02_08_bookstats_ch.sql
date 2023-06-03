-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select COUNT(DISTINCT(Published)), Published from books
group by Published
order by Published

SELECT * FROM BOOKS 
order by Published

select COUNT(loanID), bookID from Loans
group BY BookID
order by COUNT(loanID) deSC

SELECT COUNT(Loans.LoanID) AS LoanCount, Books.Title 
FROM Loans 
JOIN Books ON Loans.BookID=Books.BookID 
GROUP BY Books.Title 
ORDER BY LoanCount DESC 
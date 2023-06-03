-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select COUNT(l.PatronID), p.Email, p.PatronID from loans l
inner join patrons p on l.PatronID = p.PatronID
group by Email
order by COUNT(l.PatronID) ASC

SELECT COUNT(PatronID), patronID from loans
group by PatronID
order by COUNT(PatronID)
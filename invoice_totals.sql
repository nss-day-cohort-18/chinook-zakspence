SELECT (c.FirstName || ' ' || c.LastName) AS CustomerName,
	    i.Total,
	    c.Country,
	   (e.FirstName || ' ' || e.LastName) AS SalesRep
FROM Customer c, Employee e, Invoice i
WHERE i.CustomerId == c.CustomerId 
AND e.EmployeeId == c.SupportRepId
ORDER BY c.Country

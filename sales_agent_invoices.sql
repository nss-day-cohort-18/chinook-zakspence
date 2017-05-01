SELECT (e.FirstName || ' ' || e.LastName) AS AgentName, i.*
FROM Employee e, Customer c, Invoice i
WHERE i.CustomerId == c.CustomerId AND c.SupportRepId == e.EmployeeId
ORDER BY e.EmployeeId

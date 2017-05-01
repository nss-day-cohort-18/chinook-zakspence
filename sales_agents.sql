SELECT DISTINCT e.*
FROM Employee e, Customer c
Where c.SupportRepId == e.EmployeeId

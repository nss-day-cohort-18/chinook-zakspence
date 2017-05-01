SELECT (e.firstname || ' ' || e.lastname) Name, COUNT(c.supportrepid) NumCustomers
FROM Employee e, Customer c
WHERE e.employeeid == c.supportrepid
GROUP BY Name

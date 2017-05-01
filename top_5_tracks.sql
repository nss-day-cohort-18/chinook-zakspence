SELECT t.name, count(il.trackid) NumTracks
FROM Track t, InvoiceLine il
WHERE t.trackid == il.trackid
Group By t.Name
Order by NumTracks DESC
LIMIT 5

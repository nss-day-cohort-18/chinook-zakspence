SELECT i.InvoiceId, il.InvoiceLineId, t.Name as TrackName
From Invoice i
LEFT JOIN InvoiceLine il On il.InvoiceId == i.InvoiceId
LEFT JOIN Track t ON il.TrackId = t.TrackId
Order By il.InvoiceLineId

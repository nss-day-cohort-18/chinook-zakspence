SELECT count(InvoiceId) AS NumberOfInvoices
FROM Invoice
WHERE InvoiceDate LIKE '%2009%'

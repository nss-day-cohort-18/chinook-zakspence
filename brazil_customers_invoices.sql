SELECT LastName, FirstName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice, Customer
WHERE Country == 'Brazil'

SELECT i.BillingCountry, count(il.InvoiceId) as NumInvoices
From Invoice i, InvoiceLine il
Where il.InvoiceId == i.InvoiceId
Group By i.BillingCountry

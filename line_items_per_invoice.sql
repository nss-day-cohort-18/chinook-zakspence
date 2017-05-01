SELECT count(il.InvoiceId) As InvoiceId
From InvoiceLine il
Group by InvoiceId

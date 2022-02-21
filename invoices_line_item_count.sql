SELECT 
    il.InvoiceId,
    COUNT()
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY il.InvoiceId
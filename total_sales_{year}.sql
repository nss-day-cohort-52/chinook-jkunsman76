SELECT
    SUM(Total)
FROM 
    Invoice 
WHERE 
    InvoiceDate  
LIKE 
    '2009%' OR '2011%'
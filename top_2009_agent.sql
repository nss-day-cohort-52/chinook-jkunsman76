SELECT FirstName, LastName, max(Total) total_sales
FROM(
SELECT
    e.FirstName,
    e.LastName,
    SUM(Total) AS total
FROM Invoice i
JOIN Customer c ON c.CustomerID = i.CustomerID
JOIN Employee e ON e.EmployeeID = c.SupportRepId
WHERE i.InvoiceDate LIKE '2009%'
GROUP BY e.EmployeeId)
SELECT 
    FirstName,
    LastName,
    round(max(Total),2) total_sales
FROM(
SELECT
    e.FirstName,
    e.LastName,
    SUM(Total) AS total
FROM Invoice i
JOIN Customer c ON c.CustomerID = i.CustomerID
JOIN Employee e ON e.EmployeeID = c.SupportRepId
GROUP BY e.EmployeeId)
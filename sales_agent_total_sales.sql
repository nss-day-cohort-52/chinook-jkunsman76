SELECT
    e.FirstName,
    e.LastName,
    SUM(Total)
FROM Invoice i
JOIN Customer c ON c.CustomerID = i.CustomerID
JOIN Employee e ON e.EmployeeID = c.SupportRepId
GROUP BY EmployeeId
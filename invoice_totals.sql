SELECT
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName,
    e.LastName
    FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId 
JOIN Employee e ON e.EmployeeId = c.SupportRepId 
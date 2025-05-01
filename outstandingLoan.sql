SELECT 
  c.FirstName, 
  c.LastName, 
  l.LoanID, 
  l.Amount, 
  IFNULL(SUM(p.AmountPaid), 0) AS TotalPaid,
  (l.Amount - IFNULL(SUM(p.AmountPaid), 0)) AS Balance
FROM 
  Client c
JOIN 
  Loan l ON c.ClientID = l.ClientID
LEFT JOIN 
  Payment p ON l.LoanID = p.LoanID
GROUP BY 
  l.LoanID
HAVING 
  Balance > 0;

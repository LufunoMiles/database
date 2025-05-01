Payment(
  PaymentID INT PRIMARY KEY,
  LoanID INT,
  AmountPaid DECIMAL(10,2),
  PaymentDate DATE,
  FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
)

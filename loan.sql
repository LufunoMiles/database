Loan(
  LoanID INT PRIMARY KEY,
  ClientID INT,
  Amount DECIMAL(10,2),
  InterestRate DECIMAL(5,2),
  TermMonths INT,
  StartDate DATE,
  Status VARCHAR(20),
  FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
)

LoanApproval(
  ApprovalID INT PRIMARY KEY,
  LoanID INT UNIQUE,
  OfficerID INT,
  ApprovalDate DATE,
  Decision VARCHAR(10), -- e.g., 'Approved' or 'Rejected'
  FOREIGN KEY (LoanID) REFERENCES Loan(LoanID),
  FOREIGN KEY (OfficerID) REFERENCES LoanOfficer(OfficerID)
)

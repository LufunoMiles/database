-- Insert sample clients
INSERT INTO Client (ClientID, FirstName, LastName, Email, Phone, Address)
VALUES (1, 'John', 'Doe', 'john@example.com', '0812345678', '123 Park Street');

-- Insert sample loans
INSERT INTO Loan (LoanID, ClientID, Amount, InterestRate, TermMonths, StartDate, Status)
VALUES (101, 1, 5000.00, 12.5, 12, '2025-01-01', 'Active');

-- Insert sample payments
INSERT INTO Payment (PaymentID, LoanID, AmountPaid, PaymentDate)
VALUES (201, 101, 1000.00, '2025-02-01');

-- Insert loan officers
INSERT INTO LoanOfficer (OfficerID, FirstName, LastName, Email, Phone)
VALUES (301, 'Sarah', 'Mokoena', 'sarah@loans.com', '0823456789');

-- Insert loan approvals
INSERT INTO LoanApproval (ApprovalID, LoanID, OfficerID, ApprovalDate, Decision)
VALUES (401, 101, 301, '2025-01-02', 'Approved');

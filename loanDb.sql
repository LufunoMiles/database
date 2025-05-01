
-- Create Client table
CREATE TABLE Client (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    Address TEXT
) ENGINE=InnoDB;

-- Create Loan table
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    InterestRate DECIMAL(5,2) NOT NULL,
    TermMonths INT NOT NULL,
    StartDate DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Create Payment table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    LoanID INT NOT NULL,
    AmountPaid DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Create LoanOfficer table
CREATE TABLE LoanOfficer (
    OfficerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20)
) ENGINE=InnoDB;

-- Create LoanApproval table
CREATE TABLE LoanApproval (
    ApprovalID INT PRIMARY KEY AUTO_INCREMENT,
    LoanID INT UNIQUE NOT NULL,
    OfficerID INT NOT NULL,
    ApprovalDate DATE NOT NULL,
    Decision VARCHAR(10) CHECK (Decision IN ('Approved', 'Rejected')),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (OfficerID) REFERENCES LoanOfficer(OfficerID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE=InnoDB;

Client(
  ClientID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(20),
  Address TEXT
)

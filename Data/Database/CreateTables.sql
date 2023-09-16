DROP TABLE IF EXISTS Categories;

CREATE TABLE Categories (
    CategoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    Name NVARCHAR(50) 
);

DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions (
    TransactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    Date DATETIME,
    Price DECIMAL(18,2),
    Description NVARCHAR(100),
    CategoryId INTEGER,
    FOREIGN KEY(CategoryId) REFERENCES Categories(CategoryId)
);
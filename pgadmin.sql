
CREATE TABLE Customers (
    CustomerID serial PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Customers (FirstName, LastName, Email)
VALUES
    ('Alina', 'Temirova', 'alina@example.com'),
    ('Janna', 'Smith', 'jane.smith@gmail.com'),
    ('Michael', 'Obama', 'michael@mail.com');


CREATE TABLE Orders (
    OrderID serial PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
    (1, '2023-10-06', 100.00),
    (2, '2023-10-07', 150.00),
    (1, '2023-10-08', 75.50);

CREATE TABLE Products (
    ProductID serial PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);


INSERT INTO Products (ProductName, Price)
VALUES
    ('Laptop', 799.99),
    ('Smartphone', 499.99),
    ('Tablet', 299.99);


CREATE TABLE OrderItems (
    OrderItemID serial PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT
);


INSERT INTO OrderItems (OrderID, ProductID, Quantity)
VALUES
    (1, 1, 2),
    (1, 2, 1),
    (2, 3, 3);


CREATE TABLE Employees (
    EmployeeID serial PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (FirstName, LastName, HireDate)
VALUES
    ('Ali', 'Janybek', '2020-01-15'),
    ('Bolot', 'Smit', '2019-08-22'),
    ('Kandy', 'Isaev', '2021-03-10');


CREATE TABLE Projects (
    ProjectID serial PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);


INSERT INTO Projects (ProjectName, StartDate, EndDate)
VALUES
    ('Project A', '2022-05-01', '2022-10-31'),
    ('Project B', '2023-02-15', '2023-07-15'),
    ('Project C', '2023-06-10', '2023-12-31');


CREATE TABLE ProjectMembers (
    MemberID serial PRIMARY KEY,
    ProjectID INT REFERENCES Projects(ProjectID),
    EmployeeID INT REFERENCES Employees(EmployeeID)
);


INSERT INTO ProjectMembers (ProjectID, EmployeeID)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 3);


CREATE TABLE Categories (
    CategoryID serial PRIMARY KEY,
    CategoryName VARCHAR(100)
);


INSERT INTO Categories (CategoryName)
VALUES
    ('Electronics'),
    ('Clothing'),
    ('Furniture');


CREATE TABLE ProductsCategories (
    ProductCategoryID serial PRIMARY KEY,
    ProductID INT REFERENCES Products(ProductID),
    CategoryID INT REFERENCES Categories(CategoryID)
);


INSERT INTO ProductsCategories (ProductID, CategoryID)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (1, 3);


CREATE TABLE Suppliers (
    SupplierID serial PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(50),
    ContactEmail VARCHAR(100)
);


INSERT INTO Suppliers (SupplierName, ContactName, ContactEmail)
VALUES
    ('Nuriza', 'Supplier 1', 'supplier1@mail.com'),
    ('Makhabat', 'Supplier 2', 'supplier2@mail.com'),
    ('Madina', 'Supplier 3', 'supplier3@mail.com');
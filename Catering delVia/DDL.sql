--2301899162 - Hans gilbert riyanto
--2301897491 - Lucas Kalasuvich
--2301848294 - JONATHAN
--2301935786 - Tio novriadi putra

Create database Catering_delVia

	create	table Staff_Position(
	StaffID VARCHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'SP[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL
	)

	Create table Staff(
	[Name] VARCHAR(255),
	Gender VARCHAR(255),
	Email VARCHAR(255) CHECK (Email like '%@%'),
	PhoneNumber VARCHAR(255) CHECK (PhoneNumber like '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	[Address] VARCHAR(255),
	Salary VARCHAR(255) CHECK (Salary>=500000 OR Salary<=5000000),
	StaffID VARCHAR(255) PRIMARY KEY CHECK (StaffID like 'ST[0-9][0-9][0-9]'),
	StaffPosition VARCHAR(255) CHECK (StaffPosition like 'SP[0-9][0-9][0-9]')
	)

	Create table Purchase(
	PurchaseID VARCHAR(255) PRIMARY KEY CHECK (PurchaseID like 'PU[0-9][0-9][0-9]'),
	StaffID VARCHAR(255) FOREIGN KEY REFERENCES staff(StaffID),
	VendorID VARCHAR(255) FOREIGN KEY REFENCES Vendor(VendorID),
	PurchaseDate DATE,
	ingredientsPurchased VARCHAR(255),
	Quantity INT,
	)

	Create table Ingredients(
	IngredientsID VARCHAR(255) PRIMARY KEY CHECK (IngeredientsID like 'ID[0-9][0-9][0-9]'),
	[Name] VARCHAR(255) CHECK (LEN(Name)>5),
	Stock VARCHAR(255),
	Price VARCHAR(255)
	)

	Create table Vendor(
	VendorID VARCHAR(255) PRIMARY KEY CHECK (VendorID like 'VE[0-9][0-9][0-9]'),
	VendorName VARCHAR(255) CHECK (VendorName like 'PT.%'),
	PhoneNumber VARCHAR(255) CHECK (PhoneNumber like '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	[Address] VARCHAR(255)
	)

	create table Customer(
	CustomerName VARCHAR(255),
	CustomerNumberPhone VARCHAR(255) CHECK (PhoneNumber like '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CustomerAddress VARCHAR(255) ,
	CustomerGender VARCHAR(255),
	CustomerEmail VARCHAR(255) CHECK (CustomerEmail like '%@%'),
	CustomerID VARCHAR(255) PRIMARY KEY (CustomerID like 'CU[0-9][0-9][0-9]'),
	)
	
	create table Detail_Transaction(
	TransactionID VARCHAR(255) PRIMARY KEY,
	TransactionDate DATE,
	ReservationDate DATE,
	ReservationType VARCHAR(255),
	ReservationAddress VARCHAR(255)
	)

	create table Services_Transaction(
	StaffID VARCHAR(255) FOREIGN KEY REFERENCES Staff(StaffID),
	CustomerID VARCHAR(255) FOREIGN KEY REFERENCES Customer(CustomerID),
	TransactionID VARCHAR(255) FOREIGN KEY REFERENCES Detail_Transaction(TransactionID),
	MenuSold VARCHAR(255),
	ThePax VARCHAR(255),
	)

	Create table Menu(
	MenuName VARCHAR(255)  CHECK (LEN(MenuName)>5),
	MenuDescription VARCHAR(255),
	MenuPrice VARCHAR(255),
	MenuID VARCHAR(255) PRIMARY KEY (MenuID like 'ME[0-9][0-9][0-9]')
	)

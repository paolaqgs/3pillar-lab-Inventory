CREATE DATABASE Inventory
GO

USE Inventory
GO

CREATE TABLE Brand
(
	brandId INT IDENTITY(1,1),
	brandName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(brandId)
)
GO

CREATE TABLE Aisle
(
	aisleId INT IDENTITY(1,1),
	aisle NVARCHAR(50) NOT NULL,
	PRIMARY KEY(aisleId)
)
GO

CREATE TABLE Category
(
	categoryId INT IDENTITY(1,1),
	categoryName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(categoryId)
)
GO

CREATE TABLE Supplier
(
	supplierId INT IDENTITY(1,1),
	supplierName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(supplierId)
)
GO

CREATE TABLE Product
(
	productId INT IDENTITY(1,1),
	productName NVARCHAR(50) NOT NULL,
	price MONEY NOT NULL,
	expirationDate DATE,
	guarantee DATE,
	barcode NVARCHAR(50) NOT NULL,
	brandId INT,
	aisleId INT,
	categoryId INT,
	supplierId INT,
	PRIMARY KEY(productId),
	UNIQUE(barcode),
	FOREIGN KEY(brandId) REFERENCES Brand(brandId),
	FOREIGN KEY(aisleId) REFERENCES Aisle(aisleId),
	FOREIGN KEY(categoryId) REFERENCES Category(categoryId),
	FOREIGN KEY(supplierId) REFERENCES Supplier(supplierId)
)
GO

CREATE TABLE Movement
(
	movementId INT IDENTITY(1,1),
	productId INT,
	input INT,
	[output] INT,
	stock INT,
	[date] DATE, 
	FOREIGN KEY(productId) REFERENCES Product(productId)
)
GO
/*** QUERIES SELECTS/VIEWS  ***/
USE Inventory
GO

--- View Category & num products
CREATE OR ALTER VIEW NumProductsByCategory
AS
SELECT categoryName Category, count(productId) as TotalProducts
FROM [dbo].Product P
JOIN [dbo].Category C
ON P.categoryId = C.categoryId
GROUP BY categoryName 
GO

--- Brands&Products
CREATE OR ALTER VIEW BrandProducts
AS
SELECT brandName Brand, productName Product
FROM [dbo].Product P
JOIN [dbo].Brand B
ON P.brandId = B.brandId
GO

--- Products over $25
SELECT productName Product, brandName Brand, price Price
FROM [dbo].Product P
JOIN [dbo].Brand B
ON P.brandId = B.brandId
WHERE price >= $25
ORDER BY price
GO

--- Product Location Aile 
SELECT productName Product, aisle Aisle
FROM [dbo].Product P
JOIN [dbo].Aisle A
ON P.aisleId = A.aisleId
GO

---Product Info
CREATE OR ALTER VIEW ProductInfo
AS
SELECT productName Product, brandName Brand, price Price, expirationDate ExpirationDate, guarantee Guarantee, aisle Aisle
FROM [dbo].Product P
JOIN [dbo].Brand B
ON P.brandId = B.brandId
JOIN [dbo].Aisle A
ON P.aisleId = A.aisleId
GO
SELECT * FROM ProductInfo ORDER BY aisle 
GO

---Products with stock between 50 & 100
SELECT productName Product, stock Stock
FROM [dbo].Product P
JOIN [dbo].Movement M
ON P.productId = M.productId
WHERE stock BETWEEN 50 AND 100
GO

---Inputs & Outputs of Product
CREATE OR ALTER VIEW InputsOutputsOfProducts
AS
SELECT supplierName Supplier, productName Product, input Input, [output] [Output], [date] [Date]
FROM [dbo].Supplier S
JOIN [dbo].Product P
ON S.supplierId = P.supplierId 
JOIN [dbo].Movement M
ON P.productId = M.productId
GO

---Aisle category 
CREATE OR ALTER VIEW AisleCategory
AS
SELECT DISTINCT aisle Aisle, categoryName Category
FROM [dbo].Aisle A
JOIN [dbo].Product P
ON A.aisleId = P.aisleId
JOIN [dbo].Category C
ON P.categoryId = C.categoryId
GO

---Num of products by Supplier
CREATE OR ALTER VIEW NumOfProdBySupplier 
AS
SELECT supplierName Supplier, count(productId) as TotalProducts
FROM [dbo].Supplier S
JOIN [dbo].Product P
ON S.supplierId = P.supplierId
GROUP BY supplierName
GO

---Category & Supplier
CREATE VIEW CategoryAndSupplier
AS
SELECT categoryName Category, supplierName Supplier
FROM [dbo].Category C
JOIN [dbo].Product P
ON C.categoryId = P.categoryId
JOIN [dbo].Supplier S
ON s.supplierId = p.supplierId
GO

---Category & total of suppliers
SELECT categoryName Category, count(supplierId) as TotalSuppliers
FROM [dbo].Category C
JOIN [dbo].Product P
ON C.categoryId = P.categoryId
GROUP BY categoryName
GO

---Products with guarantee
CREATE OR ALTER VIEW ProductsWithGuarantee
AS
SELECT categoryName Category, productName Product, guarantee Guarantee
FROM [dbo].Product P
JOIN [dbo].Category C
ON P.categoryId = C.categoryId
WHERE P.guarantee IS NOT NULL
GO

---Products with Expirational Date 
CREATE OR ALTER VIEW ProductsWithExpDate
AS
SELECT categoryName Category, productName Product, expirationDate ExpirationDate
FROM [dbo].Product P
JOIN [dbo].Category C
ON P.categoryId = C.categoryId
WHERE P.expirationDate IS NOT NULL
GO

---TOP 5 Products with more output
CREATE OR ALTER VIEW TopFiveOutputProducts
AS
SELECT TOP 5 categoryName Category, productName Product, [output] [Outputs], [date] [Date]
FROM [dbo].Product P
JOIN [dbo].Movement M
ON P.productId = M.productId
JOIN [dbo].Category C
ON P.categoryId = C.categoryId
ORDER BY [output] DESC
GO

---Brands like 'X' and Products/Price
SELECT brandName Brand, productName Product, price Price
FROM [dbo].Brand B
JOIN [dbo].Product P
ON B.brandId = P.brandId
WHERE B.brandName LIKE 'Converse'
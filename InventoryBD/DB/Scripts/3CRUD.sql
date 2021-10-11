--sp = Stored Procedures
USE Inventory
GO
			--sp Brand
---INSERT
CREATE OR ALTER PROCEDURE spInsertBrand
(
	@brandName varchar(50)
)
AS
BEGIN 
	INSERT INTO [dbo].[Brand]
	VALUES ( @brandName )

	SELECT * FROM [dbo].[Brand]
END 
GO

-----------------------------------------------------------
---UPDATE
CREATE OR ALTER PROCEDURE spUpdateBrand
(
	@brandId int, 
	@brandName varchar(50)
)
AS 
BEGIN
	UPDATE [dbo].[Brand]
	SET brandName = @brandName
	WHERE brandId = @brandId

	SELECT * FROM [dbo].[Brand]
END
GO

-----------------------------------------------------------
---DELETE
CREATE OR ALTER PROCEDURE spDeleteBrand
(
	@brandId int 
)
AS 
BEGIN
	DELETE FROM [dbo].[Brand]
	WHERE brandId = @brandId

	SELECT * FROM [dbo].[Brand]
END 
GO

-----------------------------------------------------------
			--sp Category
---INSERT
CREATE OR ALTER PROCEDURE spInsertCategory
(
	@categoryName varchar(50)
)
AS 
BEGIN
	INSERT INTO [dbo].[Category]
	VALUES ( @categoryName )

	SELECT * FROM [dbo].[Category]
END 
GO
-----------------------------------------------------------
---UPDATE
CREATE OR ALTER PROCEDURE spUpdateCategory
(
	@categoryId int, 
	@categoryName varchar(50)
)
AS
BEGIN
	UPDATE [dbo].[Category]
	SET categoryName = @categoryName
	WHERE categoryId = @categoryId
	
	SELECT * FROM [dbo].[Category]
END
GO
-----------------------------------------------------------
---DELETE
CREATE OR ALTER PROCEDURE spDeleteCategory
(
	@categoryId int
)
AS
BEGIN
	DELETE FROM [dbo].[Category]
	WHERE categoryId = @categoryId

	SELECT * FROM [dbo].[Category]
END
GO
-----------------------------------------------------------

			---sp Aisle
---INSERT
CREATE OR ALTER PROCEDURE spInsertAisle
(
	@aisle varchar(50)
)
AS 
BEGIN
	INSERT INTO [dbo].[Aisle]
	VALUES ( @aisle )

	SELECT * FROM [dbo].[Aisle]
END 
GO
-----------------------------------------------------------
---UPDATE
CREATE OR ALTER PROCEDURE spUpdateAisle
(
	@aisleId int,
	@aisle varchar(50)
)
AS
BEGIN
	UPDATE [dbo].[Aisle]
	SET aisle = @aisle
	WHERE aisleId = @aisleId

	SELECT * FROM [dbo].[Aisle]
END
GO
-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteAisle
(
	@aisleId int
)
AS
BEGIN
	DELETE FROM [dbo].[Aisle]
	WHERE aisleId = @aisleId

	SELECT * FROM [dbo].[Aisle]
END
GO
-----------------------------------------------------------

			---sp Movement
---INSERT
CREATE OR ALTER PROCEDURE spInsertMovement
(
	@productId int,
    @input int,
    @output int,
    @stock int,
    @date date
)
AS
BEGIN
	INSERT INTO [dbo].[Movement]
	VALUES ( @productId, @input, @output, @stock, @date )

	SELECT * FROM [dbo].[Movement]
END
GO
-----------------------------------------------------------
---UPDATE
CREATE OR ALTER PROCEDURE spUpdateMovement
(
	@movementId int,
	@productId int,
    @input int,
    @output int,
    @stock int,
    @date date
)
AS
BEGIN
	UPDATE [dbo].[Movement]
	SET productId = @productId, input = @output, stock = @stock, [date] = @date 
	WHERE movementId = @movementId

	SELECT * FROM [dbo].[Movement]
END
GO
-----------------------------------------------------------
---DELETE
CREATE OR ALTER PROCEDURE spDeleteMovement
(
	@movementId int
)
AS
BEGIN
	DELETE FROM [dbo].[Movement]
	WHERE movementId = @movementId

	SELECT * FROM [dbo].[Movement]
END
GO
-----------------------------------------------------------

			---sp Product
---INSERT
CREATE OR ALTER PROCEDURE spInsertProduct
(
	@productName varchar(50),
    @price money,
    @expirationDate date,
    @guarantee date,
    @barcode varchar(50),
    @brandId int,
    @aisleId int,
    @categoryId int,
    @supplierId int
)
AS
BEGIN
	INSERT INTO [dbo].[Product]
	VALUES ( @productName, @price, @expirationDate, @guarantee, @barcode, @brandId, @aisleId, @categoryId, @supplierId )

	SELECT * FROM [dbo].[Product]
END
GO
-----------------------------------------------------------

---UPDATE
CREATE OR ALTER PROCEDURE spUpdateProduct
(
	@productId int,
	@productName varchar(50),
    @price money,
    @expirationDate date,
    @guarantee date,
    @barcode varchar(50),
    @brandId int,
    @aisleId int,
    @categoryId int,
    @supplierId int
)
AS
BEGIN
	UPDATE [dbo].[Product]
	SET productName = @productName, price = @price, expirationDate = @expirationDate, guarantee = @guarantee, 
	barcode = @barcode, brandId = @brandId, aisleId = @aisleId, categoryId = @categoryId, supplierId = @supplierId 
	WHERE productId = @productId

	SELECT * FROM [dbo].[Product]
END
GO
-----------------------------------------------------------
---DELETE
CREATE OR ALTER PROCEDURE spDeleteProduct
(
	@productId int
)
AS
BEGIN 
	DELETE FROM [dbo].[Product]
	WHERE productId = @productId

	SELECT * FROM [dbo].[Product]
END
GO

-----------------------------------------------------------

			---sp Supplier
---INSERT
CREATE OR ALTER PROCEDURE spInsertSupplier
(
	@supplierName varchar(50)
)
AS
BEGIN
	INSERT INTO [dbo].[Supplier]
	VALUES ( @supplierName )

	SELECT * FROM [dbo].[Supplier]
END
GO
-----------------------------------------------------------
---UPDATE
CREATE OR ALTER PROCEDURE spUpdateSupplier
(
	@supplierId int,
	@supplierName varchar(50)
)
AS
BEGIN
	UPDATE [dbo].[Supplier]
	SET supplierName = @supplierName
	WHERE supplierId = @supplierId

	SELECT * FROM [dbo].[Supplier]
END
GO
-----------------------------------------------------------
---DELETE
CREATE OR ALTER PROCEDURE spDeleteSupplier
(
	@supplierId int
)
AS
BEGIN
	DELETE FROM [dbo].[supplier]
	WHERE supplierId = @supplierId

	SELECT * FROM [dbo].[Supplier]
END
GO
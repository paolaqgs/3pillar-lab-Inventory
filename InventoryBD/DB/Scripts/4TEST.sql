/*TEST PROCEDURES INVENTORY */
USE Inventory
GO
			/* BRAND */
---INSERT
EXEC spInsertBrand 'm&m'
GO
---UPDATE
EXEC spUpdateBrand 16, 'Hersheys' 
GO
---DELETE
EXEC spDeleteBrand 16
GO

			/* CATEGORY */
---INSERT
EXEC spInsertCategory 'home decor'
GO
---UPDATE
EXEC spUpdateCategory 11, 'Home Decor'
GO
---DELETE
EXEC spDeleteCategory 11
GO

			/* Aisle */
---INSERT
EXEC spInsertAisle '2z'
GO
---UPDATE

EXEC spUpdateAisle 11, 'Z2'
GO
---DELETE
EXEC spDeleteAisle 11
GO

			/* MOVEMENT */
---INSERT
EXEC spInsertMovement 10, 10, 20, 30, '2021-10-10'
GO
---UPDATE
EXEC spUpdateMovement 16, 10, 20, 30, 30, '2021-10-15'
GO
---DELETE
EXEC spDeleteMovement 16
GO

			/* PRODUCT */
---INSERT
EXEC spInsertProduct 'coca cola', $2, '2021-12-12', NULL, 'CC00334DD6S9', 5, 1, 2, 2 
GO
---UPDATE
EXEC spUpdateProduct 16, 'cheetos puff', $2, '2021-12-12', NULL, 'CC00334DD6S9', 2, 2, 2, 2
GO
---DELETE
EXEC spDeleteProduct 16
GO

			/* SUPPLIER */
---INSERT
EXEC spInsertSupplier 'Coca Cola Co'
GO
---UPDATE
EXEC spUpdateSupplier 16, 'Coke Co'
GO
---DELETE
EXEC spDeleteSupplier 16
GO
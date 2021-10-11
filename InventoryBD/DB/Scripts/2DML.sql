USE Inventory
GO

INSERT INTO Supplier ([supplierName])
     VALUES
           ('LAND O LAKES Inc'),
		   ('Frito-Lay Inc'),
		   ('Smithfield Foods'),
		   ('Kraft Heinz Company'),
		   ('NVIDIA Co.'),
		   ('Steve Madden'),
		   ('The J.M. Smucker Company'),
		   ('Procter & Gamble'),
		   ('Kao Brands Company'),
		   ('GSK Consumer Healthcare'),
		   ('Converse'),
		   ('Mars Petcare'),
		   ('The Clorox Company'),
		   ('Thrive Natural Care'),
		   ('Johnson & Johnson')
GO

INSERT INTO Aisle ([aisle])
     VALUES
           ('A1'),
		   ('A2'),
		   ('B1'),
		   ('B2'),
		   ('C1'),
		   ('C2'),
		   ('D1'),
		   ('D2'),
		   ('E1'),
		   ('E2')
GO

INSERT INTO Category ([categoryName])
     VALUES
           ('Fresh Produce'),
		   ('Snacks'),
		   ('Meat & Seafood'),
		   ('Deli'),
		   ('Electronics'),
		   ('Clothing, Shoes & Accesories'),
		   ('Pets'),
		   ('Household Essentials'),
		   ('Personal Care'),
		   ('Pharmacy, Health & Wellness')

GO

INSERT INTO Brand ([brandName])
     VALUES
           ('Land O Lakes'),
		   ('Cheetos'),
		   ('Smithfield'),
		   ('Oscar Mayer'),
		   ('ASUS'),
		   ('Steve Madden'),
		   ('Meow Mix'),
		   ('Tide'),
		   ('John Frieda'),
		   ('Emergen-C'),
		   ('Converse'),
		   ('Pedigree'),
		   ('Clorox'),
		   ('Thrive Natural Care'),
		   ('Tylenol')
GO

INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[expirationDate]
           ,[guarantee]
           ,[barcode]
           ,[brandId]
           ,[aisleId]
           ,[categoryId]
           ,[supplierId])
     VALUES
           ('Fresh Buttery Taste Spread', $1.98,'2021-10-14',NULL, 'PS234FG558', 1, 1, 1, 1),
		   ('Cheetos Flamin Hot Limon Cheese', $11, '2025-09-14', NULL, 'CH321CL576', 2, 2, 2, 2),
		   ('Fresh Pork Tenderloin', $10.46,'2021-10-09', NULL, 'OK88UHJ775', 3, 3, 3, 3),
		   ('Smoked Bacon Slices', $8.98, '2021-10-08', NULL, 'SM9022BA22', 4, 4, 4, 4),
		   ('Full HD Gaming Laptop', $3830, NULL, '2022-04-04', 'SD3J0012YH', 5, 5, 5, 5),
		   ('Chelsea Boots', $124.95, NULL, NULL, 'KO98DD324F', 6, 6, 6, 6),
		   ('Cat Food', $50, '2021-12-12', NULL, 'CF9900PLKJ', 7, 7, 7, 7),
		   ('Laundry Detergent Packs', $21.44, NULL, NULL, 'TP55463DDS', 8, 8, 8, 8),
		   ('Shampoo', $6.97, NULL, NULL, 'JF9902332JJS', 9, 9, 9, 9),
		   ('Vitamin C Supplement Powder', $9.97, '2022-01-15', NULL, 'VC44722JSW', 10, 10, 10, 10),
		   ('Sneackers', $55, NULL, NULL, 'SN855LLKP7', 11, 6, 6, 11),
		   ('Dog Food', $25.83, '2021-12-20', NULL, 'DF9911HJN2', 12, 7, 7, 12),
		   ('Clorox', $4.42, NULL, NULL, 'CX22FD9MB4', 13, 8, 8, 13),
		   ('Sunscreen Lotion SPF 30', $20.95, NULL, NULL, 'SC0303D3DS', 14, 9, 9, 14),
		   ('Extra Strength caplets', $15.56, '2021-10-30', NULL, 'ESC9332HN4', 15, 10, 10, 15)
           
GO

INSERT INTO [dbo].[Movement]
           ([productId]
           ,[input]
           ,[output]
           ,[stock]
           ,[date])
     VALUES
           (1, 80, 20, 50, '2021-10-02'),
		   (2, 20, 10, 70, '2021-10-03'),
		   (3, 35, 15, 60, '2021-10-10'),
		   (4, 70, 5, 20, '2021-09-10'),
		   (5, 25, 2, 40, '2021-10-20'),
		   (6, 35, 15, 55, '2021-09-18'),
		   (7, 20, 10, 15, '2021-09-03'),
		   (8, 5, 0, 10, '2021-09-04'),
		   (9, 20, 15, 30, '2021-09-25'),
		   (10, 80, 50, 70, '2021-09-23'),
		   (11, 10, 5, 20, '2021-10-02'),
		   (12, 25, 15, 55, '2021-10-03'),
		   (13, 20, 35, 10, '2021-10-10'),
		   (14, 70, 20, 50, '2021-09-10'),
		   (15, 25, 5, 5, '2021-10-20')
GO
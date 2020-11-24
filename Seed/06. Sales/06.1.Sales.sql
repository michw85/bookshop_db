--CREATE TABLE Sales(
--	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
--	Price Money NOT NULL,
--	Quantity INT NOT NULL CHECK (Quantity>0),
--	SaleDate date NOT NULL CHECK (SaleDate<=GETDATE()) DEFAULT GETDATE(),
--	BookId INT NOT NULL,
--	ShopId INT NOT NULL
--	)
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (10800.00,10,'2019-07-10',1,1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (6000.00,10,'2019-07-10',2,1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (6230.00,35,'2019-07-10',10,1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (315.00,1,'2019-07-10',24,1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (760.00,10,'2019-07-10',6,2);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (4725.00,35,'2019-07-10',15,2);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (4725.00,35,'2019-07-10',15,3);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (30628.00,31,'2019-07-10',26,3);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (48960.00,40,'2019-07-10',5,4);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (14.00,1,'2019-07-10',17,5);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (15.00,1,'2019-07-10',6,6);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (28.00,2,'2019-07-10',17,7);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (45.00,3,'2019-07-10',6,7);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1680.00,8,'2019-07-10',25,8);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (38.00,1,'2019-07-10',18,9);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (150.00,10,'2019-07-10',21,10);
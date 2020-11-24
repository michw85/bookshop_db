
CREATE TABLE Sales(
	Sales_Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Sales_Price INT NOT NULL,
	Quantity INT NOT NULL,
	Sale_Date date NOT NULL,
	Books_Id INT NOT NULL,
	Shops_Id INT NOT NULL
	)
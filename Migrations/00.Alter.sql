
ALTER TABLE Authors
ADD
FOREIGN KEY (CountryId) REFERENCES Countries (Id) 

ALTER TABLE Books
	ADD 
	FOREIGN KEY (AuthorId) REFERENCES Authors (Id),
	FOREIGN KEY (ThemeId) REFERENCES Themes (Id)


ALTER TABLE Sales
	ADD 
	FOREIGN KEY (BookId) REFERENCES Books (Id),
	FOREIGN KEY (ShopId) REFERENCES Shops (Id)


ALTER TABLE Shops
	ADD 
	FOREIGN KEY (CountryId) REFERENCES Countries (Id)
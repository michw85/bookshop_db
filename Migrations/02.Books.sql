﻿CREATE TABLE Books(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(MAX) NOT NULL,
	Pages INT NOT NULL CHECK (Pages>0),
	Price INT NOT NULL CHECK (Price>=0),
	PublishDate date NOT NULL CHECK (PublishDate<=GETDATE()),
	AuthorId INT NOT NULL,
	ThemeId INT NOT NULL
	)
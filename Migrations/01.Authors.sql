﻿
CREATE TABLE Authors(
	Authors_Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	--Parent_Id INT NOT NULL DEFAULT 0,
	FirstName NVARCHAR(MAX) NOT NULL,
	LastName NVARCHAR(MAX) NOT NULL,
	Country_Id INT NOT NULL
	)
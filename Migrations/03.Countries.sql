--CREATE TABLE [dbo].[Table]
--(
--	[Id] INT NOT NULL PRIMARY KEY, 
--    [login] NCHAR(64) NOT NULL DEFAULT 'iam', 
--    [password] NCHAR(64) NOT NULL DEFAULT '0123456789',
--	[email] NCHAR(64) NOT NULL DEFAULT 'iam@ukr.net', 
--    CONSTRAINT  [login] UNIQUE ( [login]),
--	CONSTRAINT  [email] UNIQUE ( [email]),
--)
CREATE TABLE Countries(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(50) NOT NULL
	)
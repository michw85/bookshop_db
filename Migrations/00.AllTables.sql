﻿--1. Авторы (Authors)

--■■Идентификатор (Id). Уникальный идентификатор автора.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Имя (Name). Имя автора.
--▷▷Тип данных — nvarchar(max).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--■■Фамилия (Surname). Фамилия автора.
--▷▷Тип данных — nvarchar(max).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--■■Идентификатор страны (CountryId). Страна, из которой
--родом автор.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.

CREATE TABLE Authors(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	--Parent_Id INT NOT NULL DEFAULT 0,
	Name NVARCHAR(MAX) NOT NULL,
	Surname NVARCHAR(MAX) NOT NULL,
	CountryId INT NOT NULL
	)

--	2. Книги (Books)
--■■Идентификатор (Id). Уникальный идентификатор
--книги.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Название (Name). Название книги.
--▷▷Тип данных — nvarchar(max).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--■■Страницы (Pages). Количество страниц в книге.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Не может быть меньше либо равно 0.
--■■Цена (Price). Цена книги.
--▷▷Тип данных — money.
--▷▷Не может содержать null-значения.
--▷▷Не может быть меньше 0.
--■■Дата публикации (PublishDate). Дата публикации книги.
--▷▷Тип данных — date.
--▷▷Не может содержать null-значения.
--▷▷Не может быть больше текущей даты.
--■■Идентификатор автора (AuthorId). Автор книги.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.
--■■Идентификатор тематики (ThemeId). Тематика книги.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.

CREATE TABLE Books(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(MAX) NOT NULL,
	Pages INT NOT NULL CHECK (Pages>0),
	Price INT NOT NULL CHECK (Price>=0),
	PublishDate date NOT NULL CHECK (PublishDate<=GETDATE()),
	AuthorId INT NOT NULL,
	ThemeId INT NOT NULL
	)

--	3. Страны (Countries)
--■■Идентификатор (Id). Уникальный идентификатор страны.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Название (Name). Название страны.
--▷▷Тип данных — nvarchar(50).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--▷▷Должно быть уникальным.

CREATE TABLE Countries(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(50) NOT NULL UNIQUE,
	--CONSTRAINT Name UNIQUE (Name)
	)

--	4. Продажи (Sales)
--■■Идентификатор (Id). Уникальный идентификатор про-
--дажи.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Цена (Price). Цена продажи одного экземпляра книги.
--▷▷Тип данных — money.
--▷▷Не может содержать null-значения.
--▷▷Не может быть меньше 0.
--■■Количество (Quantity). Количество проданных экзем-
--пляров книги.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Не может быть меньше либо равно 0.
--■■Дата продажи (SaleDate). Дата продажи.
--▷▷Тип данных — date.
--▷▷Не может содержать null-значения.
--▷▷Не может быть больше текущей даты.
--▷▷Значение по умолчанию — текущая дата.
--■■Идентификатор книги (BookId). Проданная книга.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.
--■■Идентификатор магазина (ShopId). Магазин, в котором
--была совершена продажа.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.

CREATE TABLE Sales(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Price Money NOT NULL,
	Quantity INT NOT NULL CHECK (Quantity>0),
	SaleDate date NOT NULL CHECK (SaleDate<=GETDATE()) DEFAULT GETDATE(),
	BookId INT NOT NULL,
	ShopId INT NOT NULL
	)

--	5. Магазины (Shops)
--■■Идентификатор (Id). Уникальный идентификатор мага-
--зина.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Название (Name). Название магазина.
--▷▷Тип данных — nvarchar(max).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--■■Идентификатор страны (CountryId). Страна, в которой
--находится магазин.
--▷▷Тип данных — int.
--▷▷Не может содержать null-значения.
--▷▷Внешний ключ.

CREATE TABLE Shops(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(MAX) NOT NULL,
	CountryId INT NOT NUll
	)

--	6. Тематики (Themes)
--■■Идентификатор (Id). Уникальный идентификатор тема-
--тики.
--▷▷Тип данных — int.
--▷▷Авто приращение.
--▷▷Не может содержать null-значения.
--▷▷Первичный ключ.
--■■Название (Name). Название тематики.
--▷▷Тип данных — nvarchar(100).
--▷▷Не может содержать null-значения.
--▷▷Не может быть пустым.
--▷▷Должно быть уникальны

CREATE TABLE Themes(
	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
	Name NVARCHAR(100) NOT NULL
	)
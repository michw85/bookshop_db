--<?xml version="1.0" encoding="utf-8" ?> 
--UPDATE Region
--SET columnName1 = value1, columnName2 = value2,
--WHERE condition;

UPDATE Sales SET Price = '150.00' WHERE Id = 16 -- Где меняем? - в строке 59, Что меняем? - значение Parent_Id на новое - 47----> UPDATE Region SET Parent_Id = 47 WHERE Id = 59
UPDATE Sales SET Quantity = '10' WHERE Id = 16

UPDATE Books SET Name = N'Стихи' WHERE Id = 21
UPDATE Books SET Price = 15 WHERE Id = 21

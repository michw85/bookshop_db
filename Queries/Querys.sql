﻿--1. Показать все книги, количество страниц в которых больше 500, но меньше 650.
--SELECT *
--FROM Books
--WHERE Pages>500 AND Pages<650;

--2. Показать все книги, в которых первая буква названия либо «А», либо «З».
--SELECT *
--FROM Books
--WHERE  Name LIKE N'[АЗ]%';

--3. Показать все книги жанра «Детектив», количество проданных книг более 30 экземпляров.
--SELECT Sales.Id, Sales.Price AS Сумма, Sales.Quantity AS Количество, Sales.ShopId AS Id_Магазина, Books.Name AS Название, Books.Price AS Цена, Books.Pages AS Страниц, Books.ThemeId AS Жанр
--FROM Sales INNER JOIN Books
--ON Sales.Id=Books.Id
--WHERE  Quantity>30 
--AND ThemeId=2;

--4. Показать все книги, в названии которых есть слово «Microsoft», но нет слова «Windows».
--SELECT *
--FROM Books
--WHERE Name LIKE N'%Microsoft' AND NOT Name = N'%Windows%';

--5. Показать все книги (название, тематика, полное имя автора 
--в одной ячейке), цена одной страницы которых меньше 65 копеек.
--SELECT Books.Name +' - '+ Themes.Name  +' - '+ Authors.Name+' '+Authors.Surname AS N'Книга', Books.Price/Books.Pages AS N'Стоимость одной страницы'
--FROM Books, Themes, Authors
--WHERE Books.ThemeId=Themes.Id AND Books.AuthorId=Authors.Id
--GROUP BY Books.Name +' - '+ Themes.Name  +' - '+ Authors.Name+' '+Authors.Surname, Books.Price, Books.Pages
--HAVING (Books.Price/Books.Pages)<0.65

--6. Показать все книги, название которых состоит из 4 слов.
--SELECT *
--FROM Books
--WHERE Name LIKE N'% % % %' AND Name NOT LIKE N'% % % % %'

--7. Показать информацию о продажах в следующем виде:
--Название книги, но чтобы оно не содержало букву «А».
--Тематика, но чтобы не «Программирование».
--Автор, но чтобы не «Герберт Шилдт».
--Цена, но чтобы в диапазоне от 10 до 20 гривен.
--Количество продаж, но не менее 8 книг.
--Название магазина, который продал книгу, но он не должен быть в Украине или России.

--SELECT
--	Books.Name AS N'Название книги',
--	Themes.Name AS N'Тематика',
--	Authors.Name+' '+authors.Surname AS N'Автор',
--	Books.Price AS N'Цена',
--	Sales.Quantity AS N'Количество продаж',
--	Shops.Name AS N'Название магазина'
--FROM
--	Books, Authors, Sales, Shops, Themes, Countries
--WHERE
--	Books.ThemeId=Themes.Id
--	AND Books.AuthorId=authors.Id
--	AND Books.Id=Sales.BookId
--	AND Sales.ShopId=Shops.Id
--	AND Shops.CountryId=Countries.Id
--GROUP BY
--	Books.Name,
--	Themes.Name,
--	Authors.Name+' '+authors.Surname,
--	Books.Price,
--	Sales.Quantity,
--	Shops.Name,
--	Countries.Name
--HAVING 
-- 	Books.Name NOT LIKE (N'%А%')
--	AND Themes.Name NOT LIKE (N'Программирование')
--	AND Authors.Name+' '+authors.Surname NOT LIKE (N'Герберт Шилдт')
--	AND Books.Price BETWEEN 10 AND 20
--	AND Sales.Quantity>=8
--	AND Countries.Name NOT IN (N'Ukraine', N'Russia')

--8. Показать следующую информацию в два столбца 
--(числа в правом столбце приведены в качестве примера):
--Количество авторов: 14
--Количество книг: 47
--Средняя цена продажи: 85.43 грн.
--Среднее количество страниц: 650.6.

--SELECT 
--	N'Количество авторов' AS N'Название',
--	COUNT (Authors.Id) AS N'Количество'
--FROM Authors
--UNION
--SELECT 
--	N'Количество книг',
--	COUNT (Books.Id)
--FROM Books
--UNION
--SELECT 
--	N'Среднее количество страниц',
--	AVG (Books.Pages)
--FROM Books
--UNION
--SELECT 
--	N'Средняя цена продажи',
--	AVG (Sales.Price)
--FROM Sales

--9. Показать тематики книг и сумму страниц всех книг по каждой из них.
--SELECT 
--	N'Программирование' AS N'Тематика',
--	SUM (books.Pages) AS N'Сумма страниц всех книг'
--FROM Books
--WHERE Books.ThemeId = 1
--UNION
--SELECT
--N'Детектив', SUM (books.Pages)
--FROM Books
--WHERE Books.ThemeId = 2
--UNION
--SELECT
--N'Проза', SUM (books.Pages)
--FROM Books
--WHERE Books.ThemeId = 3
--UNION
--SELECT
--N'Поэзия', SUM (books.Pages)
--FROM Books
--WHERE Books.ThemeId = 4
--UNION
--SELECT
--N'Фантастика', SUM (books.Pages)
--FROM Books
--WHERE Books.ThemeId = 5

--10. Показать количество всех книг и сумму страниц этих книг по каждому из авторов.
--SELECT
--Authors.Name+' '+Authors.Surname AS N'Автор',
--COUNT (Books.Id) AS N'Количество книг автора',
--SUM (Books.Pages) AS N'Сумма страниц всех книг автора'
--FROM Books, Authors
--WHERE Authors.Id= Books.AuthorId
--GROUP BY Authors.Name+' '+Authors.Surname

--11. Показать книгу тематики «Программирование» с наибольшим количеством страниц.

	--SELECT Books.Name AS N'Книга по Программированию',
	--Books.Pages AS N'Наибольшее количество страниц'
	--FROM Books
	--WHERE Books.ThemeId=1 
	--AND Books.Pages=(SELECT MAX(Books.Pages)
	--				FROM Books, Themes
	--				 WHERE Books.ThemeId=Themes.Id 
	--					   AND Themes.Name IN ( N'Программирование'))
	--GROUP BY
	--Name, Pages
	----HAVING Books.Pages=MAX(Books.Pages) 

	--12. Показать среднее количество страниц по каждой тематике, которое не превышает 400.
--SELECT Themes.Name AS N'Тематика', AVG (Books.Pages) AS N'Среднее количество страниц, не превышающих 400'
--FROM Themes, Books
--WHERE Themes.Id=Books.ThemeId
--GROUP BY Themes.Name
--HAVING AVG (Books.Pages)<=400

--13. Показать сумму страниц по каждой тематике, учитывая только книги с количеством страниц более 400
--и чтобы тематики были «Программирование», «Администрирование» и «Дизайн».

--SELECT 	Themes.Name AS N'Тематика',
--	SUM (books.Pages) AS N'Сумма страниц книг у которых свыше 400 стр.'
--FROM Themes, Books
--WHERE Themes.Id=Books.ThemeId
--	AND Books.Pages>400
--GROUP BY Themes.Name
--HAVING Themes.Name IN (N'Программирование', N'Детектив', N'Поэзия')

--14. Показать информацию о работе магазинов: что, где, кем,
--когда и в каком количестве было продано.

--SELECT Books.Name+' '+Authors.Name+' '+Authors.Surname AS N'Что',
--	Countries.Name AS N'Где',
--	Shops.Name AS N'Кем',
--	Sales.SaleDate AS N'Когда',
--	Sales.Quantity AS N'Количество'	
--FROM Books, Themes, Authors, Countries, Shops, Sales
--WHERE Books.ThemeId=Themes.Id
--	AND Books.AuthorId=Authors.Id
--	AND Books.Id=Sales.BookId
--	AND Sales.ShopId=Shops.Id
--	AND Shops.CountryId=Countries.Id
--GROUP BY
--	Books.Name+' '+Authors.Name+' '+Authors.Surname,
--	Countries.Name,
--	Shops.Name,
--	Sales.SaleDate,
--	Sales.Quantity

--15. Показать самый прибыльный магазин.

--SELECT shops.Name AS shop,
--	countries.Name AS countri,
--	SalesValue.SumSalesQuantity,
--	SalesValue.SumSalesPrice
--INTO tmpSales
--FROM (SELECT 
--			S.ShopId AS SalesShopId,
--			SUM(S.Quantity) AS SumSalesQuantity, 
--			SUM(S.Price) AS SumSalesPrice			
--	 FROM sales AS S
--	 GROUP BY S.ShopId) AS SalesValue,
--	 shops,
--	 countries	 
--WHERE SalesValue.SalesShopId=shops.Id
--	AND shops.CountryId=countries.Id
--GROUP BY
--	shops.Name,
--	countries.Name,
--	SalesValue.SumSalesQuantity,
--	SalesValue.SumSalesPrice

--SELECT
--tmpSales.shop,
--SumSalesPrice AS N'Сумма выручки'
--FROM tmpSales
--where tmpSales.SumSalesPrice = (select MAX(SumSalesPrice) from tmpSales)
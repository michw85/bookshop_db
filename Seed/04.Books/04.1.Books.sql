--CREATE TABLE Books(
--	Id INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
--	Name NVARCHAR(MAX) NOT NULL,
--	Pages INT NOT NULL CHECK (Pages>0),
--	Price INT NOT NULL CHECK (Price>=0),
--	PublishDate date NOT NULL CHECK (PublishDate<=GETDATE()),
--	AuthorId INT NOT NULL,
--	ThemeId INT NOT NULL
--	)
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Java. Полное руководство', 1488, 1080.00, '2019-01-01', 1, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Microsoft Windows', 1088, 600.00, '2018-01-01', 2, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Вы не знаете о Microsoft', 240, 520.00, '2019-02-01', 3, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Освоение Apple macOS и Windows', 1488, 1080.00, '2014-01-01', 4, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Глубокое обучение и TensorFlow для профессионалов. Математический подход к построению систем искусственного интеллекта на Python', 480, 1224.00, '2019-01-10', 5, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'SQL за 10 минут', 288, 15.00, '2015-01-01', 6, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Android. Программирование для профессионалов', 688, 872.00, '2016-01-01', 7, 1);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Собака Баскервилей', 784, 298.00, '2017-01-01', 8, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Черный город', 416, 265.00, '2012-01-01', 9, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Инферно', 576, 178.00, '2013-01-01', 10, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Убийство в "Восточном экспрессе"', 288, 235.00, '2011-01-01', 11, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Тайна отца Брауна', 480, 267.00, '2014-01-01', 12, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Только через мой труп', 288, 170.00, '2014-02-01', 13, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Пост сдал', 448, 275.00, '2016-01-01', 14, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Детектив', 608, 135.00, '2015-03-01', 15, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Лонтано', 672, 135.00, '2016-01-01', 16, 2);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Гамлет', 352, 14.00, '2011-01-01', 17, 3);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Пьесы', 140, 38.00, '2014-05-01', 18, 3);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Драми та драматичні поеми', 450, 314.00, '2017-02-01', 19, 3);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Наталка Полтавка', 128, 33.00, '2017-06-01', 20, 3);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Стихи', 272, 15.00, '2010-01-01', 21, 4);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Руслан и Людмила', 352, 65.00, '2013-07-01', 22, 4);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Анна Снегина', 219, 44.00, '2013-08-01', 23, 4);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Божественная Комедия', 768, 315.00, '2013-09-01', 24, 4);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Ведьмак. Час Презрения', 350, 210.00, '2019-01-01', 25, 5);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Путешествия Гулливера', 192, 988.00, '2009-01-01', 26, 5);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Властелин колец. Возвращение короля', 704, 233.00, '2013-03-15', 27, 5);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Затерянный мир', 256, 47.00, '2015-05-01', 8, 5);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Пикник на обочине', 256, 110.00, '2015-04-01', 28, 5);
INSERT INTO Books (Name,Pages, Price, PublishDate, AuthorId, ThemeId) VALUES (N'Повелители Мечей', 496, 480.00, '2016-04-01', 29, 5);
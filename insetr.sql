-- Заполнение таблицы жанров (genre)
insert into genre (id, name)
values 
(1, 'Рок'), 
(2, 'Метал'), 
(3, 'Рэп'), 
(4, 'Джаз'), 
(5, 'Блюз');

-- Заполняем таблицу исполнителей (artist)
insert into artist (id, name)
values
(1, 'The Kut'), -- Rock
(2, 'Regressive Left'),
(3, 'Farewell To Fear'), -- Metal
(4, 'Oni'),
(5, 'Niman'), -- Rap
(6, 'JEEMBO'),
(7, 'Masala Quartet'), -- Jazz
(8, 'Brady Branden'),
(9, 'Tami Neilson'), -- Blues
(10, 'John Martin');

-- Связываем исполнителей с жанрами (GenreArtist)
insert into genreartist (genre_id, artist_id)
values 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

-- Заполнение таблицы Альбомов (Music_album)
insert into music_album (id, name, year)
values 
(1, 'GRIT', 2022), -- The Kut
(2, 'Valley Of Thorns', 2018),
(3, 'On The Wrong Side of History', 2022), -- Regressive left
(4, 'Left Turn', 2017),
(5, 'Polarity', 2022), -- Farewell To Fear
(6, 'Brainwashed', 2021),
(7, 'Ironshore', 2016), -- Oni
(8, 'Alone', 2019),
(9, 'Aint Got Time', 2012), -- Niman
(10, 'Banger', 2021),
(11, 'BLACK BOX', 2020), -- JEEMBO
(12, 'RAIDERS', 2019),
(13, 'Foggy Forest', 2022), -- Masala Quartet
(14, 'Stories from Masala', 2020),
(15, 'New Policy', 2022), -- Brady Branden
(16, 'Old Policy', 2019),
(17, 'Crazy', 2018), -- Tami Neilson
(18, 'Dynamite!', 2014),
(19, 'Drop That Beat', 2022), -- John Martin
(20, 'Peace to All', 2020);

-- Связываем альбомы с Исполнителями (ArtistAlbum)
insert into artistalbum (artist_id, album_id)
values 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20);

-- Заполняем таблицу треков (track_list)
insert into track_list (id, album_id, name, duration)
values 
-- The Kut
(1, 1, 'Burn Your Bridges', 235), -- GRIT 
(2, 1, 'Not Here For My Love', 240),
(3, 2, 'Mind Games', 225), -- Valley Of Thorns
(4, 2, 'Love in the Rush Hour', 257),
-- Regressive left
(5, 3, 'The Wrong Side of History', 480), -- On The Wrong Side of History
(6, 3, 'World on Fire', 224),
(7, 4, 'No More Fun', 217), -- Left Turn 
(8, 4, 'Bad Faith', 242),
-- Farewell To Fear
(9, 5, 'Powertrip', 202), -- Polarity
(10, 5, 'Brainwashed', 274),
(11, 6, 'Played Again', 195), -- Brainwashed
(12, 6, 'Fall in Line', 239),
-- Oni
(13, 7, 'Barn Burner', 240), -- Ironshore
(14, 7, 'Eternal Recurrence', 309),
(15, 8, 'Alone', 347), --Alone
(16, 8, 'Rift', 268),
-- Niman
(17, 9, 'Skit', 155), -- Aint Got Time
(18, 9, 'Weekend', 22),
(19, 10, 'Challenge', 111), -- Banger
(20, 10, 'Ciao, bye', 179),
-- JEEMBO
(21, 11, 'Run For My Dogs', 152), -- BLACK BOX
(22, 11, 'CASHBOX', 180),
(23, 12, 'Money on Grave', 179), -- RAIDERS
(24, 12, 'DARKBORN', 132),
-- Masala Quartet
(25, 13, 'Foggy Forest', 780), -- Foggy Forest
(26, 13, 'Shaking Leg', 493),
(27, 14, 'Anthropocentrism', 430), -- Stories from Masala
(28, 14, 'Undersea', 616),
-- Brady Branden
(29, 15, 'Blackout Curtains', 86), -- New Policy
(30, 15, 'Cash for Cans', 89),
(31, 16, 'Laundry Machine', 85), -- Old policy
(32, 16, 'Pool Table', 79),
-- Tami Neilson
(33, 17, 'Careless Woman', 110), -- Crazy
(34, 17, 'King of Country Music', 186),
(35, 18, 'Green Peaches', 206), -- Dynamite!
(36, 18, 'I Can Forget', 198),
-- John Martin
(37, 19, 'Nothing Comes for Free', 262), -- Drop That Beat
(38, 19, 'Too Much to Lose', 300),
(39, 20, 'She Was Gone', 244), -- Peace to All
(40, 20, 'Мой Mr. Mix', 256);

-- Заполняем таблицу Collection
insert into collection (id, name, year)
values 
(1, 'Sun', 2020),
(2, 'Drop That Beat', 2021),
(3, 'Night After Night', 2021),
(4, 'If Tomorrow Never Comes', 2022),
(5, 'Played Again', 2019),
(6, 'Thorn', 2018),
(7, 'Voices', 2022),
(8, 'Waiting for Sunrise', 2018);

-- Связываем треки с коллекцией (TrackCollection)
insert into trackcollection (track_id, collection_id)
values 
(3, 1),
(4, 1),
(7, 2),
(8, 2),
(13, 3),
(14, 3),
(9, 4),
(10, 4),
(23, 5),
(24, 5),
(35, 6),
(36, 6),
(37, 7),
(38, 7),
(33, 8),
(34, 8);
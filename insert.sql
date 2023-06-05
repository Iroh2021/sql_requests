
insert into artist (artist_name) values
('Собачий lie'),
('Childish Gambino'),
('Pharaoh'),
('Twenty One Pilots');

insert into genre (genre_name) values
('Alternative'),
('Indie-pop'),
('Rap');

insert into album (album_name, album_year) values 
('Хорошего мало', 2021),
('3.15.20', 2020),
('Pink Phloyd', 2017),
('Vessel', 2013);

insert into track (album_id, track_name, track_duration) values 
(1, 'Радио', 218),
(1, 'Руки за голову', 213),
(3, 'Лаллипап', 167),
(3, 'Дико, например', 163),
(4, 'Hold on to You', 264),
(4, 'Car Radio', 249),
(2, '47.48', 363),
(2, 'Feels Like Summer', 288),
(3, 'Мой мрак', 236);

insert into collection (collection_name, collection_year) values 
('collect indie', 2022),
('collect rap', 2019),
('collect 2020', 2021),
('collect pharaoh', 2018);

insert into genre_artist (genre_id, artist_id, solution) values 
(1, 4, 'a'), (2, 1, 'b'), (2, 2, 'c'), (3, 2, 'd'), (3, 3, 'e');

insert into artist_album  (artist_id, album_id, solution) values 
(1, 1, 'a'), (2, 2, 'b'), (3, 3, 'c'), (4, 4, 'd');

insert into collection_track  (collection_id, track_id, solution) values 
(1, 1, 'a'), (1, 2, 'b'), (1, 7, 'c'), (1, 8, 'd'), 
(2, 3, 'e'), (2, 4, 'f'), (2, 9, 'g'), 
(3, 3, 'h'), (3, 5, 'i'), (3, 8, 'j'), (3, 9,'k'), 
(4, 3, 'l'), (4, 4, 'm'), (4, 9, 'n');
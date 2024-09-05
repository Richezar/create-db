insert into genres (genre_name)
values ('rap');
insert into genres (genre_name)
values ('rock');
insert into genres (genre_name)
values ('techno');


insert into artists (name_artist)
values ('The Beatles');
insert into artists (name_artist)
values ('Eminem');
insert into artists (name_artist)
values ('Drake');
insert into artists (name_artist)
values ('Neptunica');


insert into albums (name_album, year)
values ('aDrake', 2019);
insert into albums (name_album, year)
values ('aTheBeatles', 2000);
insert into albums (name_album, year)
values ('aEminem', 2020);


insert into artist_genre (genre_id, artist_id)
values (2, 1);
insert into artist_genre (genre_id, artist_id)
values (1, 2);
insert into artist_genre (genre_id, artist_id)
values (1, 3);
insert into artist_genre (genre_id, artist_id)
values (3, 4);


insert into artist_album (artist_id, album_id)
values (1, 2);
insert into artist_album (artist_id, album_id)
values (2, 3);
insert into artist_album (artist_id, album_id)
values (3, 1);


insert into songs (name, duration, album_id)
values ('drake1', 256, 1);
insert into songs (name, duration, album_id)
values('drake2', 205, 1);
insert into songs (name, duration, album_id)
values('thebeatles1', 200, 2);
insert into songs (name, duration, album_id)
values('thebeatles2', 127, 2);
insert into songs (name, duration, album_id)
values('eminem1', 186, 3);
insert into songs (name, duration, album_id)
values('eminem2', 215, 3);
insert into songs (name, duration, album_id)
values('eminem3 my', 210, 3);


insert into collections (name, year)
values ('C1', 2017);
insert into collections (name, year)
values ('C2', 2018);
insert into collections (name, year)
values ('C3', 2019);
insert into collections (name, year)
values ('C4', 2020);


insert into collection (song_id, collection_id)
values (1, 1);
insert into collection (song_id, collection_id)
values (1, 2);
insert into collection (song_id, collection_id)
values (6, 1);
insert into collection (song_id, collection_id)
values (2, 3);
insert into collection (song_id, collection_id)
values (3, 2);
insert into collection (song_id, collection_id)
values (7, 3);
insert into collection (song_id, collection_id)
values (5, 4);
insert into collection (song_id, collection_id)
values (4, 4);










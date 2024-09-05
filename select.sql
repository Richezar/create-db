select name, max(duration) from songs
group by name
limit 1;

select name, duration from songs
where duration >= 210;

select name, year from collections
where 2018 <= year and year <= 2020;

select name_artist from artists
where (length(name_artist) - length(replace(name_artist, ' ', ''))) = 0;

select name from songs
where name like '%my%' or name like '%мой%';

select genre_name as genre, count(distinct artist_id) as count_art from genres g , artist_genre ag 
where g.id = ag.genre_id 
group by genre;

select a.name_album, count(s.id) as count_song from songs s , albums a 
where s.album_id = a.id and a.year between 2018 and 2020
group by a.name_album;

select avg(s.duration) as avg_s, a.name_album from songs s , albums a 
where s.album_id = a.id
group by a.name_album;

SELECT DISTINCT a.name_artist FROM artists a 
WHERE a.name_artist NOT IN (SELECT DISTINCT a.name_artist FROM artists a 
					LEFT JOIN artist_album aa ON a.id=aa.album_id
					LEFT JOIN albums a2 ON a2.id=aa.album_id
					WHERE a2.year = 2020);

select c.name from collections c , collection c2 , songs s , albums a , artist_album aa , artists a2 
where c.id = c2.id and c2.id = s.id and s.id = a.id and a.id = aa.id and aa.id = a2.id and a2.name_artist = 'Eminem';

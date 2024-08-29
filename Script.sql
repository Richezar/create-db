create table if not exists genres (
	id SERIAL primary key,
	genre_name varchar(60) not null
);

create table if not exists artists (
	id SERIAL primary key,
	name_artist varchar(60) not null
);	

create table if not exists artist_genre (
	id SERIAL primary key,
	genre_id integer references genres(id),
	artist_id integer references artists(id)
);

create table if not exists albums (
	id SERIAL primary key,
	name_album varchar(60) not null,
	year integer check (year > 1950)
);	

create table if not exists artist_album (
	id SERIAL primary key,
	artist_id integer references artists(id),
	album_id integer references albums(id)
);	

create table if not exists songs (
	id SERIAL primary key,
	name varchar(60) not null,
	duration integer check (duration > 14400),
	album_id integer references albums(id)
);	

create table if not exists collections (
	id SERIAL primary key,
	name varchar(60) not null,
	year integer check (year > 1950)
);	

create table if not exists collection (
	id SERIAL primary key,
	song_id integer references songs(id),
	collection_id integer references collections(id)
);	
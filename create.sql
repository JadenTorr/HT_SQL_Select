create table if not exists Genre (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Artist (
	id serial primary key,
	name varchar(40) not null
);

create table if not exists GenreArtist (
	genre_id integer references Genre(id),
	artist_id integer references Artist(id),
	constraint pk primary key (genre_id, artist_id)
);

create table if not exists Music_album (
	id serial primary key,
	name varchar(60) not null,
	year integer not null
);

create table if not exists ArtistAlbum (
	artist_id integer references Artist(id),
	album_id integer references Music_album(id),
	constraint ik primary key (artist_id, album_id)
);

create table if not exists Track_list (
	id serial primary key not null,
	album_id integer references Music_album(id),
	name varchar(60) not null,
	duration float
);

create table if not exists Collection (
	id serial primary key not null,
	name varchar(60) not null,
	year integer not null
);

create table if not exists TrackCollection (
	track_id integer references Track_list(id),
	collection_id integer references Collection(id),
	constraint vik primary key (track_id, collection_id)
);
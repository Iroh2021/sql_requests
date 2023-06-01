create table if not exists genre (
id serial primary key,
genre_name VARCHAR(20) not null
);
create table if not exists artist (
id serial primary key,
artist_name varchar(20) not null
);
create table if not exists album (
id serial primary key,
album_name varchar(20) not null,
album_year date 
);
create table if not exists track (
id serial primary key,
album_id integer not null references album(id),
track_name varchar(20) not null,
track_duration integer
);
create table if not exists collection (
id serial primary key,
collection_name text not null,
collection_year date
);
create table if not exists genre_artist (
id serial primary key,
genre_id integer not null references genre(id),
artist_id integer not null references artist(id),
solution text not null
);
create table if not exists artist_album (
id serial primary key,
artist_id integer not null references artist(id),
album_id integer not null references album(id),
solution text not null
);
create table if not exists collection_track (
id serial primary key,
collection_id integer not null references collection(id),
track_id integer not null references track(id),
solution text not null
)
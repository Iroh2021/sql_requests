
select track_name, track_duration from track
where track_duration = (select max(track_duration) from track);

select track_name from track
where track_duration >= 210;

select collection_name from collection
where collection_year >= 2018 and collection_year <= 2020;

select artist_name from artist
where artist_name not like '% %';

select track_name from track
where string_to_array(lower(track_name), ' ')&&ARRAY['my', 'мой'];

select genre_name, count(artist_id)artist_c from genre g 
join genre_artist ga on g.id = ga.id 
group by g.genre_name 
order by artist_c desc ;

select count(*) track_count 
from track t 
join album a on t.album_id = a.id 
where a.album_year between 2019 and 2020 ;

select avg(track_duration) avg_duration, album_name
from track t 
join album a on t.album_id = a.id 
group by a.album_name ;

select artist_name
from artist a 
where artist_name not in(
select artist_name from artist a
join artist_album aa on a.id = aa.id 
join album a2 on a.id = a2.id
where a2.album_year = 2020 
);

select distinct  collection_name
from collection c 
join collection_track ct on c.id =ct.id 
join track t on ct.track_id = t.id 
join album a on t.album_id = a.id 
join artist_album aa on a.id =aa.album_id 
join artist a2 on aa.artist_id = a2.id 
where a2.artist_name = 'Собачий lie' ;
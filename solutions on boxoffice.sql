select * from movie_details;
select * from movie_commercials;

-- q1
select *
from movie_details
where release_date between "2019-12-31" and "2021-01-01";

-- q2
select * from movie_commercials
order by movie_total_worldwide desc;
-- q3
select * from movie_details
where movie_genre= "Comedy" and release_date between "2018-12-31" and "2020-01-01";

-- q4
select * from movie_details 
where release_date between "2019-12-31" and "2021-01-01"
order by runtime asc;

-- q5
select movie_name,
if(max(movie_firstweek)=max(movie_total_worldwide), "Same Movie", "Not same movie") as comparison 
from movie_commercials
group by movie_name, movie_firstweek
order by movie_firstweek desc
limit 1;

-- q6
select * from movie_commercials
where movie_weekend= movie_firstweek;

-- q7
select movie_name,round((movie_total_worldwide-movie_total),2)
from movie_commercials
where (movie_total_worldwide-movie_total)
order by (movie_total_worldwide-movie_total) desc
limit 3;

-- q8
select * from movie_details
where weekday(release_date) not in (4,5,6);

-- q9
select producer, movie_name, movie_genre
from movie_details
where producer= "Reliance Entertainment" and movie_genre!= "Comedy";

-- q10
select * from movie_details
where monthname(release_date) in ("October", "November","December") and 
weekday(release_date) in (4,5,6);



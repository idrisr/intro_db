--Find all years that have a movie that received a rating of 
--4 or 5, and sort them in increasing order

--.header on - turn on column names in queries

select distinct year 
from (
select year
from Movie m
join Rating r on
m.mID = r.mID
and r.stars in (4, 5)) s
order by year
;

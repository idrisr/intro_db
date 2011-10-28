--Find the titles of all movies that have no rating

select title from movie
where title not in(
select distinct title from
(select title
from movie m
join rating r
on m.mID = r.mID
and r.stars is not NULL) s);

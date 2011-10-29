--For each movie that has at least one rating, find the
--highest number of stars that movie receiveed. Return 
--the movie title and number of stars. Sort by movie title

select m.title, max(r.stars) 
from movie m
join rating r 
on m.mID = r.mID
group by m.mID
order by m.title;

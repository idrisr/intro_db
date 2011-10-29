--For each movie, return the title and the 'rating spread', that is, the difference 
--between highest and lowest ratings given to that movie. Sort by rating spread 
--from highest to lowest, then by movie title. 

select m.title, max(r.stars) - min(r.stars) as spread
from movie m
join rating r 
on m.mID = r.mID
group by m.mID
order by spread desc, m.title;

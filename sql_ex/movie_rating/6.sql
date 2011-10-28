--For all cases where the same rating rated the same ratie twice
--and gave it a higher rating the second time, return ther reviewer's
--name and the title of the movie.

select rev.name, mov.title
from rating rat1 join
rating rat2 on rat1.mID = rat2.mID
join reviewer rev on rev.rID = rat1.rID
join movie mov on mov.mID = rat1.mID
and rat1.rID = rat2.rID
and rat1.ratingDate < rat2.ratingDate
and rat1.stars < rat2.stars;

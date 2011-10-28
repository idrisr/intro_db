--Write a query to return the ratings data in a more readable format:
--reviewer name
--movie title
--stars
--ratingDate

--Also, sort the data, first by reviewer name, then by movie title,
--and lastly by number of stars.

select rev.name, mov.title, rat.stars, rat.ratingDate
from reviewer rev
join rating rat
on rev.rID = rat.rID
join movie mov
on rat.mID = mov.mID
order by rev.name, mov.title, rat.stars;

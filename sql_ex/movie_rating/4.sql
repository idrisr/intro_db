--Some reviewers didn't provide a date with their rating. Find the names
--of all reviewers who have ratings with a NULL value for the date.

select name
from rating rat
join reviewer rev
on rev.rID = rat.rID
and ratingDate is NULL;



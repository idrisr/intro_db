--Insert 5-star ratings by James Cameron for all movies in the 
--database. Leave the review date as NULL.

--Movies not reviewed by James Cameron
INSERT INTO rating
select 
    (select rev.rID 
    from reviewer rev 
    join rating rat on rev.rID = rat.rID
    and rev.name='James Cameron') 
rID, 
mID,
5, 
NULL
from movie;
--where mID not in 
    --(--movies reviewed by James Cameron
    --select mov.mID
    --from Rating rat
    --join Reviewer rev on rat.rID = rev.rID
    --join movie mov on rat.mID = mov.mID
    --and rev.name = 'James Cameron')
--;

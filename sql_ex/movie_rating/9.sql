--Find the difference between the average rating of movies released 
--before 1980 and the average rating of movies released after 1980. 
--(Make sure to calculate the average rating for each movie, then 
--the average of those averages for movies before 1980 and movies 
--after. Don't just calculate the overall average rating before 
--and after 1980.) 



--add a line, test

select before - after 
from (
    select distinct(
        select avg(after.Average) 
        from (
            select avg(r.stars) as Average
            from movie m
            join rating r
            on r.mID = m.mID
            and m.year > 1980
            group by m.title) after) 
        as after,

        (select avg(before.Average) 
        from (
            select avg(r.stars) as Average
            from movie m
            join rating r
            on r.mID = m.mID
            and m.year < 1980
            group by m.title) before)
        as before
    from movie) 
bloat;
